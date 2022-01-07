
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int is_streamed; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_15__ {int is_streamed; } ;
struct TYPE_14__ {TYPE_1__* opaque; int callback; } ;
struct TYPE_13__ {int ring; TYPE_5__* inner; int mutex; int cond_wakeup_main; int cond_wakeup_background; int async_buffer_thread; int logical_size; int interrupt_callback; } ;
typedef TYPE_2__ Context ;
typedef TYPE_3__ AVIOInterruptCB ;
typedef int AVDictionary ;


 int AV_LOG_ERROR ;
 int BUFFER_CAPACITY ;
 int READ_BACK_CAPACITY ;
 int async_buffer_task ;
 int async_check_interrupt ;
 int av_err2str (int) ;
 int av_log (TYPE_1__*,int ,char*,int ,...) ;
 int av_strstart (char const*,char*,char const**) ;
 int ffurl_close (TYPE_5__*) ;
 int ffurl_open_whitelist (TYPE_5__**,char const*,int,TYPE_3__*,int **,int ,int ,TYPE_1__*) ;
 int ffurl_size (TYPE_5__*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int ring_destroy (int *) ;
 int ring_init (int *,int ,int ) ;

__attribute__((used)) static int async_open(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context *c = h->priv_data;
    int ret;
    AVIOInterruptCB interrupt_callback = {.callback = async_check_interrupt, .opaque = h};

    av_strstart(arg, "async:", &arg);

    ret = ring_init(&c->ring, BUFFER_CAPACITY, READ_BACK_CAPACITY);
    if (ret < 0)
        goto fifo_fail;


    c->interrupt_callback = h->interrupt_callback;
    ret = ffurl_open_whitelist(&c->inner, arg, flags, &interrupt_callback, options, h->protocol_whitelist, h->protocol_blacklist, h);
    if (ret != 0) {
        av_log(h, AV_LOG_ERROR, "ffurl_open failed : %s, %s\n", av_err2str(ret), arg);
        goto url_fail;
    }

    c->logical_size = ffurl_size(c->inner);
    h->is_streamed = c->inner->is_streamed;

    ret = pthread_mutex_init(&c->mutex, ((void*)0));
    if (ret != 0) {
        av_log(h, AV_LOG_ERROR, "pthread_mutex_init failed : %s\n", av_err2str(ret));
        goto mutex_fail;
    }

    ret = pthread_cond_init(&c->cond_wakeup_main, ((void*)0));
    if (ret != 0) {
        av_log(h, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", av_err2str(ret));
        goto cond_wakeup_main_fail;
    }

    ret = pthread_cond_init(&c->cond_wakeup_background, ((void*)0));
    if (ret != 0) {
        av_log(h, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", av_err2str(ret));
        goto cond_wakeup_background_fail;
    }

    ret = pthread_create(&c->async_buffer_thread, ((void*)0), async_buffer_task, h);
    if (ret) {
        av_log(h, AV_LOG_ERROR, "pthread_create failed : %s\n", av_err2str(ret));
        goto thread_fail;
    }

    return 0;

thread_fail:
    pthread_cond_destroy(&c->cond_wakeup_background);
cond_wakeup_background_fail:
    pthread_cond_destroy(&c->cond_wakeup_main);
cond_wakeup_main_fail:
    pthread_mutex_destroy(&c->mutex);
mutex_fail:
    ffurl_close(c->inner);
url_fail:
    ring_destroy(&c->ring);
fifo_fail:
    return ret;
}
