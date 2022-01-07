
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_sm {int const* ownaddr; } ;
struct l2_ethhdr {int h_proto; int h_source; int h_dest; } ;


 int ESP_OK ;
 int ETH_ALEN ;
 int host_to_be16 (int ) ;
 int memcpy (int ,int const*,int ) ;
 int wps_sendto_wrapper (void*,int) ;

__attribute__((used)) static inline int wps_sm_ether_send(struct wps_sm *sm, const u8 *dest, u16 proto,
                                    const u8 *data, size_t data_len)
{
    void *buffer = (void *)(data - sizeof(struct l2_ethhdr));
    struct l2_ethhdr *eth = (struct l2_ethhdr *)buffer;

    memcpy(eth->h_dest, dest, ETH_ALEN);
    memcpy(eth->h_source, sm->ownaddr, ETH_ALEN);
    eth->h_proto = host_to_be16(proto);

    wps_sendto_wrapper(buffer, sizeof(struct l2_ethhdr) + data_len);

    return ESP_OK;
}
