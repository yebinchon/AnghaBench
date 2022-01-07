
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint32 ;


 int _dos_ds ;
 int _farnspokeb (scalar_t__,int ) ;
 int _farsetsel (int ) ;

void DOSMemSet(uint32 A, uint8 V, uint32 count)
{
 uint32 x;

 _farsetsel(_dos_ds);
 for(x=0;x<count;x++)
  _farnspokeb(A+x,V);
}
