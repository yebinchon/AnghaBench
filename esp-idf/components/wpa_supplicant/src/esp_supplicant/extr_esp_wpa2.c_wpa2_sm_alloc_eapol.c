
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2_ethhdr {int dummy; } ;
struct ieee802_1x_hdr {int version; int length; int type; } ;
struct eap_sm {int dummy; } ;


 int host_to_be16 (int ) ;
 int memcpy (struct ieee802_1x_hdr*,void const*,int ) ;
 int memset (struct ieee802_1x_hdr*,int ,int ) ;
 void* os_malloc (size_t) ;

u8 *wpa2_sm_alloc_eapol(struct eap_sm *sm, u8 type,
                        const void *data, u16 data_len,
                        size_t *msg_len, void **data_pos)
{
    void *buffer;
    struct ieee802_1x_hdr *hdr;

    *msg_len = sizeof(struct ieee802_1x_hdr) + data_len;

    buffer = os_malloc(*msg_len + sizeof(struct l2_ethhdr));

    if (buffer == ((void*)0)) {
        return ((void*)0);
    }

    hdr = (struct ieee802_1x_hdr *)((char *)buffer + sizeof(struct l2_ethhdr));
    hdr->version = 0x01;
    hdr->type = type;
    hdr->length = host_to_be16(data_len);

    if (data) {
        memcpy(hdr + 1, data, data_len);
    } else {
        memset(hdr + 1, 0, data_len);
    }

    if (data_pos) {
        *data_pos = hdr + 1;
    }

    return (u8 *) hdr;
}
