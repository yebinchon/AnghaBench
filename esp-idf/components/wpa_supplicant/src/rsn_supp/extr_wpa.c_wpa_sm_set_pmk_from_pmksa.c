
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {int pmk; int pmk_len; TYPE_1__* cur_pmksa; } ;
struct TYPE_2__ {int pmk; int pmk_len; } ;


 int PMK_LEN ;
 int os_memcpy (int ,int ,int ) ;
 int os_memset (int ,int ,int ) ;

void wpa_sm_set_pmk_from_pmksa(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return;

 if (sm->cur_pmksa) {
  sm->pmk_len = sm->cur_pmksa->pmk_len;
  os_memcpy(sm->pmk, sm->cur_pmksa->pmk, sm->pmk_len);
 } else {
  sm->pmk_len = PMK_LEN;
  os_memset(sm->pmk, 0, PMK_LEN);
 }
}
