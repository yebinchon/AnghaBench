
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_SP_KEY_NOTIF_EVT ;
 int btm_proc_sp_req_evt (int ,int *) ;

__attribute__((used)) static void btu_hcif_user_passkey_notif_evt (UINT8 *p)
{
    btm_proc_sp_req_evt(BTM_SP_KEY_NOTIF_EVT, p);
}
