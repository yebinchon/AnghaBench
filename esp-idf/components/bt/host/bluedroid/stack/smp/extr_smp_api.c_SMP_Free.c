
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSMP_CB ;


 int FREE_AND_RESET (int ) ;
 int curve_p256_ptr ;
 int curve_ptr ;
 int memset (int *,int ,int) ;
 int smp_cb ;
 int smp_cb_ptr ;

void SMP_Free(void)
{
    memset(&smp_cb, 0, sizeof(tSMP_CB));





}
