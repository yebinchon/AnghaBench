
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int btm_simple_pair_complete (int *) ;

__attribute__((used)) static void btu_hcif_simple_pair_complete_evt (UINT8 *p)
{
    btm_simple_pair_complete(p);
}
