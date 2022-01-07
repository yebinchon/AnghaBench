
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int * NewPack () ;
 int PackAddData (int *,char*,void*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int SHA1_SIZE ;

PACK *PackHello(void *random, UINT ver, UINT build, char *server_str)
{
 PACK *p;

 if (random == ((void*)0) || server_str == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "hello", server_str);
 PackAddInt(p, "version", ver);
 PackAddInt(p, "build", build);
 PackAddData(p, "random", random, SHA1_SIZE);

 return p;
}
