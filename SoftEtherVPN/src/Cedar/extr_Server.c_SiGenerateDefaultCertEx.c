
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int cn ;
typedef int X ;
typedef int NAME ;
typedef int K ;


 int FreeK (int *) ;
 int FreeName (int *) ;
 int GetDaysUntil2038Ex () ;
 int GetMachineName (char*,int) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int * NewName (int *,int *,int *,char*,int *,int *) ;
 int * NewRootX (int *,int *,int *,int ,int *) ;
 int RsaGen (int **,int **,int) ;
 int StrCpy (char*,int,char*) ;
 int StrToUni (int *,int,char*) ;

void SiGenerateDefaultCertEx(X **server_x, K **server_k, char *common_name)
{
 X *x;
 K *private_key, *public_key;
 NAME *name;
 char tmp[MAX_SIZE];
 wchar_t cn[MAX_SIZE];

 if (server_x == ((void*)0) || server_k == ((void*)0))
 {
  return;
 }


 RsaGen(&private_key, &public_key, 2048);

 if (IsEmptyStr(common_name))
 {

  StrCpy(tmp, sizeof(tmp), "server.softether.vpn");
  GetMachineName(tmp, sizeof(tmp));
  StrToUni(cn, sizeof(cn), tmp);
 }
 else
 {
  StrToUni(cn, sizeof(cn), common_name);
 }

 name = NewName(cn, cn, cn,
  L"US", ((void*)0), ((void*)0));
 x = NewRootX(public_key, private_key, name, GetDaysUntil2038Ex(), ((void*)0));

 *server_x = x;
 *server_k = private_key;

 FreeName(name);

 FreeK(public_key);
}
