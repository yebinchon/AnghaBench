
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int tBTM_INQ_RESULTS ;


 int bt_mesh_scan_result_callback ;
 int bt_mesh_scan_results_change_2_bta (int *,int *,int ) ;

__attribute__((used)) static void bt_mesh_scan_results_cb(tBTM_INQ_RESULTS *p_inq, u8_t *p_eir)
{
    bt_mesh_scan_results_change_2_bta(p_inq, p_eir, bt_mesh_scan_result_callback);
}
