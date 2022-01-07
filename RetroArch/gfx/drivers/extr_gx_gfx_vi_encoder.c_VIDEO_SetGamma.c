
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MAX (int ,int ) ;
 int MIN (int,int) ;
 int __VIWriteI2CRegisterBuf (int,int,int *) ;
 int ** gamma_coeffs ;

void VIDEO_SetGamma(int gamma)
{
   gamma = MAX(0,MIN(30,gamma));
   u8 *data = (u8 *)&gamma_coeffs[gamma][0];
   __VIWriteI2CRegisterBuf(0x10, 0x21, data);
}
