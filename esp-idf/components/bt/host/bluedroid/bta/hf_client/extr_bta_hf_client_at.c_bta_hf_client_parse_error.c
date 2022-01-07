
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_CHECK_EVENT (char*,char*) ;
 int AT_CHECK_RN (char*) ;
 int BTA_HF_CLIENT_AT_RESULT_ERROR ;
 int bta_hf_client_handle_error (int ,int ) ;

__attribute__((used)) static char *bta_hf_client_parse_error(char *buffer)
{
    AT_CHECK_EVENT(buffer, "ERROR");
    AT_CHECK_RN(buffer);

    bta_hf_client_handle_error(BTA_HF_CLIENT_AT_RESULT_ERROR, 0);

    return buffer;
}
