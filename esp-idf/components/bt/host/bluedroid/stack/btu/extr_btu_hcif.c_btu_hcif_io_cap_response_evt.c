
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_io_capabilities_rsp (int *) ;

__attribute__((used)) static void btu_hcif_io_cap_response_evt (UINT8 *p)
{
    btm_io_capabilities_rsp(p);
}
