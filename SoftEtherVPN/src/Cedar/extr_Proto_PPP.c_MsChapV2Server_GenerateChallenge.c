
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int Rand (int *,int) ;

void MsChapV2Server_GenerateChallenge(UCHAR *dst)
{

 if (dst == ((void*)0))
 {
  return;
 }

 Rand(dst, 16);
}
