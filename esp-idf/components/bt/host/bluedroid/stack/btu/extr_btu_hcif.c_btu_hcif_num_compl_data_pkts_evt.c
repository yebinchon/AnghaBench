
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_sco_process_num_completed_pkts (int *) ;
 int l2c_link_process_num_completed_pkts (int *) ;

__attribute__((used)) static void btu_hcif_num_compl_data_pkts_evt (UINT8 *p)
{

    l2c_link_process_num_completed_pkts (p);



    btm_sco_process_num_completed_pkts (p);

}
