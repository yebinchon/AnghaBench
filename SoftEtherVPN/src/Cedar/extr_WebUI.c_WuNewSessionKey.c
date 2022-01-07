
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;


 int BinToStr (char*,int,char*,int) ;
 int MD5_SIZE ;
 char* Malloc (int) ;
 int Rand (char*,int) ;

__attribute__((used)) static char *WuNewSessionKey()
{
 char tmp[MD5_SIZE], *ret;
 UINT size;
 Rand(tmp, sizeof(tmp));
 size = sizeof(tmp)*2+1;
 ret = Malloc(size);
 BinToStr(ret, size, tmp, sizeof(tmp));
 return ret;
}
