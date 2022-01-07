
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct wpa_state_machine {int dummy; } ;


 int BIT (size_t) ;
 size_t WPA_SM_MAX_INDEX ;
 struct wpa_state_machine** s_sm_table ;
 int s_sm_valid_bitmap ;

__attribute__((used)) static struct wpa_state_machine * wpa_auth_get_sm(u32 index)
{
    if ( (index < WPA_SM_MAX_INDEX) && (BIT(index) & s_sm_valid_bitmap)){
        return s_sm_table[index];
    }

    return ((void*)0);
}
