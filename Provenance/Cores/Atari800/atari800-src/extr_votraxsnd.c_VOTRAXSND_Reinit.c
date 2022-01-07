
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VOTRAXSND_Init (scalar_t__,int ,int ) ;
 int bit16 ;
 scalar_t__ dsprate ;
 int num_pokeys ;

void VOTRAXSND_Reinit(void)
{
 if (dsprate) VOTRAXSND_Init(dsprate, num_pokeys, bit16);
}
