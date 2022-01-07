
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int ReadDSP (int*) ;
 int WriteDSP (int) ;

__attribute__((used)) static int GetDSPVersion(void)
{
 int ret;
 uint8 t;

 if(!WriteDSP(0xE1))
  return(0);
 if(!ReadDSP(&t))
  return(0);
 ret=t<<8;
 if(!ReadDSP(&t))
  return(0);
 ret|=t;

 return(ret);
}
