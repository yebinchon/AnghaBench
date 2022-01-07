
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {int const* addr; } ;
struct l2_ethhdr {char* h_dest; char* h_source; int h_proto; } ;


 size_t ETH_ALEN ;
 int ETH_P_EAPOL ;
 int MSG_DEBUG ;
 int esp_wifi_internal_tx (int,void*,int) ;
 int host_to_be16 (int ) ;
 int memcpy (char*,int const*,size_t) ;
 int os_free (void*) ;
 void* os_malloc (int) ;
 int wpa_printf (int ,char*,void*) ;

__attribute__((used)) static inline int
wpa_auth_send_eapol(struct wpa_authenticator *wpa_auth, const u8 *addr,
            const u8 *data, size_t data_len, int encrypt)
{
    void *buffer = os_malloc(256);
    struct l2_ethhdr *eth = buffer;

    if (!buffer){
        wpa_printf( MSG_DEBUG, "send_eapol, buffer=%p\n", buffer);
        return -1;
    }

    memcpy(eth->h_dest, addr, ETH_ALEN);
    memcpy(eth->h_source, wpa_auth->addr, ETH_ALEN);
    eth->h_proto = host_to_be16(ETH_P_EAPOL);

    memcpy((char *)buffer + sizeof(struct l2_ethhdr), data, data_len);
    esp_wifi_internal_tx(1, buffer, sizeof(struct l2_ethhdr) + data_len);
    os_free(buffer);
    return 0;
}
