
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2_ethhdr {int h_proto; int h_source; int h_dest; } ;
struct eap_sm {int const* ownaddr; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_ALEN ;
 int MSG_ERROR ;
 int host_to_be16 (int ) ;
 int memcpy (int ,int const*,int ) ;
 int wpa2_sendto_wrapper (void*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static inline int wpa2_sm_ether_send(struct eap_sm *sm, const u8 *dest, u16 proto,
                                     const u8 *data, size_t data_len)
{
    void *buffer = (void *)(data - sizeof(struct l2_ethhdr));
    struct l2_ethhdr *eth = ((void*)0);

    if (!buffer) {
        wpa_printf(MSG_ERROR, "wpa2: invalid data");
        return ESP_FAIL;
    } else {
        eth = (struct l2_ethhdr *)buffer;
        memcpy(eth->h_dest, dest, ETH_ALEN);
        memcpy(eth->h_source, sm->ownaddr, ETH_ALEN);
        eth->h_proto = host_to_be16(proto);
        wpa2_sendto_wrapper(buffer, sizeof(struct l2_ethhdr) + data_len);
    }

    return ESP_OK;
}
