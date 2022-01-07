
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_pm_proc_mode_change (int ,int ,int ,int ) ;
 int btm_sco_chk_pend_unpark (int ,int ) ;

__attribute__((used)) static void btu_hcif_mode_change_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    UINT8 current_mode;
    UINT16 interval;

    STREAM_TO_UINT8 (status, p);

    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT8 (current_mode, p);
    STREAM_TO_UINT16 (interval, p);

    btm_sco_chk_pend_unpark (status, handle);

    btm_pm_proc_mode_change (status, handle, current_mode, interval);






}
