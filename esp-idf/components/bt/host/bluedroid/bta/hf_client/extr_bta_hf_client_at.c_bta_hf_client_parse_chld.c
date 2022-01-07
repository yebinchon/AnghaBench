
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_CHECK_EVENT (char*,char*) ;
 int AT_CHECK_RN (char*) ;
 int BTA_HF_CLIENT_CHLD_HOLD_ACC ;
 int BTA_HF_CLIENT_CHLD_MERGE ;
 int BTA_HF_CLIENT_CHLD_MERGE_DETACH ;
 int BTA_HF_CLIENT_CHLD_PRIV_X ;
 int BTA_HF_CLIENT_CHLD_REL ;
 int BTA_HF_CLIENT_CHLD_REL_ACC ;
 int BTA_HF_CLIENT_CHLD_REL_X ;
 int bta_hf_client_handle_chld (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *bta_hf_client_parse_chld(char *buffer)
{
    AT_CHECK_EVENT(buffer, "+CHLD:");

    if (*buffer != '(') {
        return ((void*)0);
    }

    buffer++;

    while (*buffer != '\0') {
        if (strncmp("0", buffer, 1) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_REL);
            buffer++;
        } else if (strncmp("1x", buffer, 2) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_REL_X);
            buffer += 2;
        } else if (strncmp("1", buffer, 1) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_REL_ACC);
            buffer++;
        } else if (strncmp("2x", buffer, 2) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_PRIV_X);
            buffer += 2;
        } else if (strncmp("2", buffer, 1) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_HOLD_ACC);
            buffer++;
        } else if (strncmp("3", buffer, 1) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_MERGE);
            buffer++;
        } else if (strncmp("4", buffer, 1) == 0) {
            bta_hf_client_handle_chld(BTA_HF_CLIENT_CHLD_MERGE_DETACH);
            buffer++;
        } else {
            return ((void*)0);
        }

        if (*buffer == ',') {
            buffer++;
            continue;
        }

        if (*buffer == ')') {
            buffer++;
            break;
        }

        return ((void*)0);
    }

    AT_CHECK_RN(buffer);

    return buffer;
}
