
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetData (int *,char*,void*) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,char*,int ) ;
 scalar_t__ SHA1_SIZE ;

bool GetHello(PACK *p, void *random, UINT *ver, UINT *build, char *server_str, UINT server_str_size)
{

 if (p == ((void*)0) || random == ((void*)0) || ver == ((void*)0) || server_str == ((void*)0))
 {
  return 0;
 }

 if (PackGetStr(p, "hello", server_str, server_str_size) == 0)
 {
  return 0;
 }
 *ver = PackGetInt(p, "version");
 *build = PackGetInt(p, "build");
 if (PackGetDataSize(p, "random") != SHA1_SIZE)
 {
  return 0;
 }
 if (PackGetData(p, "random", random) == 0)
 {
  return 0;
 }

 return 1;
}
