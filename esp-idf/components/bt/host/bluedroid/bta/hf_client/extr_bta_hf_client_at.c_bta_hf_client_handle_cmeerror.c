
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int BTA_HF_CLIENT_AT_RESULT_CME ;
 int bta_hf_client_handle_error (int ,int ) ;

__attribute__((used)) static void bta_hf_client_handle_cmeerror(UINT32 code)
{
    bta_hf_client_handle_error(BTA_HF_CLIENT_AT_RESULT_CME, code);
}
