
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int UINT ;
typedef int PACK ;
typedef int K ;
typedef int INTERNET_SETTING ;


 int * WpcCallEx (char*,int *,int ,int ,char*,int *,int *,int *,void*,int *,int ,int *,int *) ;

PACK *WpcCall(char *url, INTERNET_SETTING *setting, UINT timeout_connect, UINT timeout_comm,
     char *function_name, PACK *pack, X *cert, K *key, void *sha1_cert_hash)
{
 return WpcCallEx(url, setting, timeout_connect, timeout_comm, function_name, pack, cert, key,
  sha1_cert_hash, ((void*)0), 0, ((void*)0), ((void*)0));
}
