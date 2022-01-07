
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int btm_pm_proc_ssr_evt (int *,int ) ;

__attribute__((used)) static void btu_hcif_ssr_evt (UINT8 *p, UINT16 evt_len)
{
    btm_pm_proc_ssr_evt(p, evt_len);
}
