
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPC_RECV_CALLBACK ;
typedef int URL_DATA ;
typedef int UINT ;
typedef int INTERNET_SETTING ;
typedef int BUF ;


 int * HttpRequestEx3 (int *,int *,int ,int ,int *,int,char*,int *,void*,void*,int,int*,int ,char*,char*) ;

BUF *HttpRequestEx2(URL_DATA *data, INTERNET_SETTING *setting,
       UINT timeout_connect, UINT timeout_comm,
       UINT *error_code, bool check_ssl_trust, char *post_data,
       WPC_RECV_CALLBACK *recv_callback, void *recv_callback_param, void *sha1_cert_hash,
       bool *cancel, UINT max_recv_size, char *header_name, char *header_value)
{
 return HttpRequestEx3(data, setting, timeout_connect, timeout_comm, error_code, check_ssl_trust,
  post_data, recv_callback, recv_callback_param, sha1_cert_hash, (sha1_cert_hash == ((void*)0) ? 0 : 1),
  cancel, max_recv_size, header_name, header_value);
}
