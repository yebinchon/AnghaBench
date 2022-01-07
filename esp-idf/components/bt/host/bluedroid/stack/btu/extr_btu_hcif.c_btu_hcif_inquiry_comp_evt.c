
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_BR_INQUIRY_MASK ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_process_inq_complete (int ,int ) ;

__attribute__((used)) static void btu_hcif_inquiry_comp_evt (UINT8 *p)
{
    UINT8 status;

    STREAM_TO_UINT8 (status, p);


    btm_process_inq_complete(status, BTM_BR_INQUIRY_MASK);
}
