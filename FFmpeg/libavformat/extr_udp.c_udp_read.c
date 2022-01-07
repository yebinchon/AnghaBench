
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int int64_t ;
typedef int addr ;
struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int circular_buffer_error; int filters; int udp_fd; int mutex; int cond; scalar_t__ fifo; } ;
typedef TYPE_2__ UDPContext ;


 int AVERROR (scalar_t__) ;
 int AVIO_FLAG_NONBLOCK ;
 int AV_LOG_WARNING ;
 int AV_RL32 (int *) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ ETIMEDOUT ;
 int av_fifo_drain (scalar_t__,int) ;
 int av_fifo_generic_read (scalar_t__,int *,int,int *) ;
 int av_fifo_size (scalar_t__) ;
 int av_gettime () ;
 int av_log (TYPE_1__*,int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ ff_ip_check_source_lists (struct sockaddr_storage*,int *) ;
 int ff_neterrno () ;
 int ff_network_wait_fd (int ,int ) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int recvfrom (int ,int *,int,int ,struct sockaddr*,int*) ;

__attribute__((used)) static int udp_read(URLContext *h, uint8_t *buf, int size)
{
    UDPContext *s = h->priv_data;
    int ret;
    struct sockaddr_storage addr;
    socklen_t addr_len = sizeof(addr);
    if (!(h->flags & AVIO_FLAG_NONBLOCK)) {
        ret = ff_network_wait_fd(s->udp_fd, 0);
        if (ret < 0)
            return ret;
    }
    ret = recvfrom(s->udp_fd, buf, size, 0, (struct sockaddr *)&addr, &addr_len);
    if (ret < 0)
        return ff_neterrno();
    if (ff_ip_check_source_lists(&addr, &s->filters))
        return AVERROR(EINTR);
    return ret;
}
