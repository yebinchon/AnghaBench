
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_CHECK_EVENT (char*,char*) ;
 char* bta_hf_client_parse_cind_list (char*) ;
 char* bta_hf_client_parse_cind_values (char*) ;

__attribute__((used)) static char *bta_hf_client_parse_cind(char *buffer)
{
    AT_CHECK_EVENT(buffer, "+CIND:");

    if (*buffer == '(') {
        return bta_hf_client_parse_cind_list(buffer);
    }

    return bta_hf_client_parse_cind_values(buffer);
}
