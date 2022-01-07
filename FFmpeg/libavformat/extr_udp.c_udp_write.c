
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int circular_buffer_error; int udp_fd; int dest_addr_len; int dest_addr; int is_connected; int mutex; int cond; scalar_t__ fifo; } ;
typedef TYPE_2__ UDPContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_NONBLOCK ;
 int AV_WL32 (int *,int) ;
 int ENOMEM ;
 int av_fifo_generic_write (scalar_t__,int *,int,int *) ;
 int av_fifo_space (scalar_t__) ;
 int ff_neterrno () ;
 int ff_network_wait_fd (int ,int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send (int ,int const*,int,int ) ;
 int sendto (int ,int const*,int,int ,struct sockaddr*,int ) ;

__attribute__((used)) static int udp_write(URLContext *h, const uint8_t *buf, int size)
{
    UDPContext *s = h->priv_data;
    int ret;
    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = ff_network_wait_fd(s->udp_fd, 1);
        if (ret < 0)
            return ret;
    }

    if (!s->is_connected) {
        ret = sendto (s->udp_fd, buf, size, 0,
                      (struct sockaddr *) &s->dest_addr,
                      s->dest_addr_len);
    } else
        ret = send(s->udp_fd, buf, size, 0);

    return ret < 0 ? ff_neterrno() : ret;
}
