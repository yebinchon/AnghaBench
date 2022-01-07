
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int opt_val ;
struct TYPE_5__ {int icmp_pkt_size; int transmitted; int sock; int target_addr; TYPE_2__* packet_hdr; } ;
typedef TYPE_1__ esp_ping_t ;
typedef int esp_err_t ;
struct TYPE_6__ {scalar_t__ chksum; int seqno; } ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int TAG ;
 int getsockopt (int ,int ,int ,int*,int*) ;
 scalar_t__ inet_chksum (TYPE_2__*,int) ;
 int sendto (int ,TYPE_2__*,int,int ,struct sockaddr*,int) ;

__attribute__((used)) static esp_err_t esp_ping_send(esp_ping_t *ep)
{
    esp_err_t ret = ESP_OK;
    ep->packet_hdr->seqno++;

    ep->packet_hdr->chksum = 0;
    ep->packet_hdr->chksum = inet_chksum(ep->packet_hdr, ep->icmp_pkt_size);

    int sent = sendto(ep->sock, ep->packet_hdr, ep->icmp_pkt_size, 0,
                      (struct sockaddr *)&ep->target_addr, sizeof(ep->target_addr));

    if (sent != ep->icmp_pkt_size) {
        int opt_val;
        socklen_t opt_len = sizeof(opt_val);
        getsockopt(ep->sock, SOL_SOCKET, SO_ERROR, &opt_val, &opt_len);
        ESP_LOGE(TAG, "send error=%d", opt_val);
        ret = ESP_FAIL;
    } else {
        ep->transmitted++;
    }
    return ret;
}
