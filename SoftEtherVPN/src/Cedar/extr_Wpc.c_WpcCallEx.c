
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int UINT ;
typedef int PACK ;
typedef int K ;
typedef int INTERNET_SETTING ;


 int * WpcCallEx2 (char*,int *,int ,int ,char*,int *,int *,int *,void*,int,int*,int ,char*,char*,int *) ;

PACK *WpcCallEx(char *url, INTERNET_SETTING *setting, UINT timeout_connect, UINT timeout_comm,
    char *function_name, PACK *pack, X *cert, K *key, void *sha1_cert_hash, bool *cancel, UINT max_recv_size,
    char *additional_header_name, char *additional_header_value)
{
 return WpcCallEx2(url, setting, timeout_connect, timeout_comm, function_name, pack,
  cert, key, sha1_cert_hash, (sha1_cert_hash == ((void*)0) ? 0 : 1),
  cancel, max_recv_size, additional_header_name, additional_header_value, ((void*)0));
}
