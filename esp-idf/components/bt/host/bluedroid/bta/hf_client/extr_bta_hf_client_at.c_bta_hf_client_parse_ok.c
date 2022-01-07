
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_CHECK_EVENT (char*,char*) ;
 int AT_CHECK_RN (char*) ;
 int bta_hf_client_handle_ok () ;

__attribute__((used)) static char *bta_hf_client_parse_ok(char *buffer)
{
    AT_CHECK_EVENT(buffer, "OK");
    AT_CHECK_RN(buffer);

    bta_hf_client_handle_ok();

    return buffer;
}
