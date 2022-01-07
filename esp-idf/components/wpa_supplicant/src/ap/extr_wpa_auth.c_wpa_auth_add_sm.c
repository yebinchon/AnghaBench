
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wpa_state_machine {size_t index; } ;


 int BIT (size_t) ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t WPA_SM_MAX_INDEX ;
 struct wpa_state_machine** s_sm_table ;
 int s_sm_valid_bitmap ;
 int wpa_printf (int ,char*,size_t,...) ;

__attribute__((used)) static void wpa_auth_add_sm(struct wpa_state_machine *sm)
{
    if (sm) {
        u8 i;
        for (i=0; i<WPA_SM_MAX_INDEX; i++) {
            if (BIT(i) & s_sm_valid_bitmap) {
                if (s_sm_table[i] == sm) {
                    wpa_printf( MSG_INFO, "add sm already exist i=%d", i);
                }
                continue;
            }
            s_sm_table[i] = sm;
            s_sm_valid_bitmap |= BIT(i);
            sm->index = i;
            wpa_printf( MSG_DEBUG, "add sm, index=%d bitmap=%x\n", i, s_sm_valid_bitmap);
            return;
        }
    }
}
