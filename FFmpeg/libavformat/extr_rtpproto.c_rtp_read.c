
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int member_1; int revents; int fd; int member_2; int member_0; } ;
typedef int socklen_t ;
struct TYPE_4__ {int flags; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int last_rtp_source_len; int last_rtcp_source_len; int filters; struct sockaddr_storage last_rtcp_source; struct sockaddr_storage last_rtp_source; int rtcp_fd; int rtp_fd; } ;
typedef TYPE_2__ RTPContext ;


 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int AVIO_FLAG_NONBLOCK ;
 int EAGAIN ;
 int EINTR ;
 int EIO ;
 int POLLIN ;
 scalar_t__ ff_check_interrupt (int *) ;
 scalar_t__ ff_ip_check_source_lists (struct sockaddr_storage*,int *) ;
 scalar_t__ ff_neterrno () ;
 int poll (struct pollfd*,int,int) ;
 int recvfrom (int ,int *,int,int ,struct sockaddr*,int*) ;

__attribute__((used)) static int rtp_read(URLContext *h, uint8_t *buf, int size)
{
    RTPContext *s = h->priv_data;
    int len, n, i;
    struct pollfd p[2] = {{s->rtp_fd, POLLIN, 0}, {s->rtcp_fd, POLLIN, 0}};
    int poll_delay = h->flags & AVIO_FLAG_NONBLOCK ? 0 : 100;
    struct sockaddr_storage *addrs[2] = { &s->last_rtp_source, &s->last_rtcp_source };
    socklen_t *addr_lens[2] = { &s->last_rtp_source_len, &s->last_rtcp_source_len };

    for(;;) {
        if (ff_check_interrupt(&h->interrupt_callback))
            return AVERROR_EXIT;
        n = poll(p, 2, poll_delay);
        if (n > 0) {

            for (i = 1; i >= 0; i--) {
                if (!(p[i].revents & POLLIN))
                    continue;
                *addr_lens[i] = sizeof(*addrs[i]);
                len = recvfrom(p[i].fd, buf, size, 0,
                                (struct sockaddr *)addrs[i], addr_lens[i]);
                if (len < 0) {
                    if (ff_neterrno() == AVERROR(EAGAIN) ||
                        ff_neterrno() == AVERROR(EINTR))
                        continue;
                    return AVERROR(EIO);
                }
                if (ff_ip_check_source_lists(addrs[i], &s->filters))
                    continue;
                return len;
            }
        } else if (n < 0) {
            if (ff_neterrno() == AVERROR(EINTR))
                continue;
            return AVERROR(EIO);
        }
        if (h->flags & AVIO_FLAG_NONBLOCK)
            return AVERROR(EAGAIN);
    }
}
