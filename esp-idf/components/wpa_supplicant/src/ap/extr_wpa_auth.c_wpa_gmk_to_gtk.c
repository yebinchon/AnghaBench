
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int data ;


 int ETH_ALEN ;
 int WPA_GMK_LEN ;
 int WPA_NONCE_LEN ;
 int memcpy (int *,int const*,int) ;
 scalar_t__ os_get_random (int *,int) ;
 scalar_t__ sha1_prf (int const*,int ,char const*,int *,int,int *,size_t) ;
 int sha256_prf (int const*,int ,char const*,int *,int,int *,size_t) ;
 int wpa_get_ntp_timestamp (int *) ;

__attribute__((used)) static int wpa_gmk_to_gtk(const u8 *gmk, const char *label, const u8 *addr,
              const u8 *gnonce, u8 *gtk, size_t gtk_len)
{
    u8 data[ETH_ALEN + WPA_NONCE_LEN + 8 + 16];
    u8 *pos;
    int ret = 0;
    memcpy(data, addr, ETH_ALEN);
    memcpy(data + ETH_ALEN, gnonce, WPA_NONCE_LEN);
    pos = data + ETH_ALEN + WPA_NONCE_LEN;
    wpa_get_ntp_timestamp(pos);
    pos += 8;
    if (os_get_random(pos, 16) < 0)
        ret = -1;




    if (sha1_prf(gmk, WPA_GMK_LEN, label, data, sizeof(data), gtk, gtk_len) < 0)
        ret = -1;


    return ret;
}
