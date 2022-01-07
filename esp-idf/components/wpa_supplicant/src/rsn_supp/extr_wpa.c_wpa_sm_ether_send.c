
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_sm {int (* sendto ) (void*,int) ;int const* own_addr; } ;
struct l2_ethhdr {int h_proto; int h_source; int h_dest; } ;


 int ETH_ALEN ;
 int host_to_be16 (int ) ;
 int memcpy (int ,int const*,int ) ;
 int stub1 (void*,int) ;

__attribute__((used)) static inline int wpa_sm_ether_send( struct wpa_sm *sm, const u8 *dest, u16 proto,
        const u8 *data, size_t data_len)
{
    void *buffer = (void *)(data - sizeof(struct l2_ethhdr));
    struct l2_ethhdr *eth = (struct l2_ethhdr *)buffer;

    memcpy(eth->h_dest, dest, ETH_ALEN);
    memcpy(eth->h_source, sm->own_addr, ETH_ALEN);
    eth->h_proto = host_to_be16(proto);
    sm->sendto(buffer, sizeof(struct l2_ethhdr) + data_len);

    return 0;
}
