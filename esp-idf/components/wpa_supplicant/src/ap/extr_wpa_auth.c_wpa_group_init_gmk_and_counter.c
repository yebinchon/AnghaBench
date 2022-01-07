
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_group {int * Counter; int * GMK; } ;
struct wpa_authenticator {struct wpa_group** addr; } ;
typedef int rkey ;
typedef int group ;
typedef int buf ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPA_GMK_LEN ;
 int WPA_NONCE_LEN ;
 int memcpy (int *,struct wpa_group**,int) ;
 scalar_t__ os_get_random (int *,int) ;
 scalar_t__ sha1_prf (int *,int,char*,int *,int,int *,int) ;
 int wpa_get_ntp_timestamp (int *) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static int wpa_group_init_gmk_and_counter(struct wpa_authenticator *wpa_auth,
                      struct wpa_group *group)
{
    u8 buf[ETH_ALEN + 8 + sizeof(group)];
    u8 rkey[32];

    if (os_get_random(group->GMK, WPA_GMK_LEN) < 0)
        return -1;
    wpa_hexdump_key(MSG_DEBUG, "GMK", group->GMK, WPA_GMK_LEN);





    memcpy(buf, wpa_auth->addr, ETH_ALEN);
    wpa_get_ntp_timestamp(buf + ETH_ALEN);
    memcpy(buf + ETH_ALEN + 8, &group, sizeof(group));
    if (os_get_random(rkey, sizeof(rkey)) < 0)
        return -1;

    if (sha1_prf(rkey, sizeof(rkey), "Init Counter", buf, sizeof(buf),
            group->Counter, WPA_NONCE_LEN) < 0)
        return -1;
    wpa_hexdump_key(MSG_DEBUG, "Key Counter",
            group->Counter, WPA_NONCE_LEN);

    return 0;
}
