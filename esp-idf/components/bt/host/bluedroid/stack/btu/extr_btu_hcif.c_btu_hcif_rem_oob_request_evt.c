
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_rem_oob_req (int *) ;

__attribute__((used)) static void btu_hcif_rem_oob_request_evt (UINT8 *p)
{
    btm_rem_oob_req(p);
}
