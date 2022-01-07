
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int close_req; int filters; int fifo; int udp_fd; int cond; int mutex; int circular_buffer_thread; scalar_t__ thread_started; int local_addr_storage; int dest_addr; scalar_t__ is_multicast; } ;
typedef TYPE_2__ UDPContext ;


 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int av_fifo_freep (int *) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int closesocket (int ) ;
 int ff_ip_reset_filters (int *) ;
 int pthread_cancel (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strerror (int) ;
 int udp_leave_multicast_group (int ,struct sockaddr*,struct sockaddr*) ;

__attribute__((used)) static int udp_close(URLContext *h)
{
    UDPContext *s = h->priv_data;
    if (s->is_multicast && (h->flags & AVIO_FLAG_READ))
        udp_leave_multicast_group(s->udp_fd, (struct sockaddr *)&s->dest_addr,(struct sockaddr *)&s->local_addr_storage);
    closesocket(s->udp_fd);
    av_fifo_freep(&s->fifo);
    ff_ip_reset_filters(&s->filters);
    return 0;
}
