
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int bssid; } ;


 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static inline int wpa_sm_get_bssid(struct wpa_sm *sm, u8 *bssid)
{
    memcpy(bssid, sm->bssid, ETH_ALEN);
    return 0;
}
