
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_CHECK_EVENT (char*,char*) ;
 int bta_hf_client_handle_cmeerror ;
 char* bta_hf_client_parse_uint32 (char*,int ) ;

__attribute__((used)) static char *bta_hf_client_parse_cmeerror(char *buffer)
{
    AT_CHECK_EVENT(buffer, "+CME ERROR:");

    return bta_hf_client_parse_uint32(buffer, bta_hf_client_handle_cmeerror);
}
