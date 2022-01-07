
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int logical_pos; int io_error; int mutex; int cond_wakeup_background; int cond_wakeup_main; scalar_t__ io_eof_reached; int ring; } ;
typedef int RingBuffer ;
typedef TYPE_2__ Context ;


 int AVERROR_EOF ;
 int AVERROR_EXIT ;
 int FFMIN (int,int) ;
 scalar_t__ async_check_interrupt (TYPE_1__*) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ring_generic_read (int *,void*,int,void (*) (void*,void*,int)) ;
 int ring_size (int *) ;

__attribute__((used)) static int async_read_internal(URLContext *h, void *dest, int size, int read_complete,
                               void (*func)(void*, void*, int))
{
    Context *c = h->priv_data;
    RingBuffer *ring = &c->ring;
    int to_read = size;
    int ret = 0;

    pthread_mutex_lock(&c->mutex);

    while (to_read > 0) {
        int fifo_size, to_copy;
        if (async_check_interrupt(h)) {
            ret = AVERROR_EXIT;
            break;
        }
        fifo_size = ring_size(ring);
        to_copy = FFMIN(to_read, fifo_size);
        if (to_copy > 0) {
            ring_generic_read(ring, dest, to_copy, func);
            if (!func)
                dest = (uint8_t *)dest + to_copy;
            c->logical_pos += to_copy;
            to_read -= to_copy;
            ret = size - to_read;

            if (to_read <= 0 || !read_complete)
                break;
        } else if (c->io_eof_reached) {
            if (ret <= 0) {
                if (c->io_error)
                    ret = c->io_error;
                else
                    ret = AVERROR_EOF;
            }
            break;
        }
        pthread_cond_signal(&c->cond_wakeup_background);
        pthread_cond_wait(&c->cond_wakeup_main, &c->mutex);
    }

    pthread_cond_signal(&c->cond_wakeup_background);
    pthread_mutex_unlock(&c->mutex);

    return ret;
}
