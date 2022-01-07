
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* DMActrlptr ;
 int Jdisint (int) ;

void MFP_IRQ_off(void)
{
 Jdisint(13);
 DMActrlptr[0] = 0;
}
