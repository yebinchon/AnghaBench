
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_INQ_RESULT_EXTENDED ;
 int btm_process_inq_results (int *,int ) ;

__attribute__((used)) static void btu_hcif_extended_inquiry_result_evt (UINT8 *p)
{

    btm_process_inq_results (p, BTM_INQ_RESULT_EXTENDED);
}
