
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p_eir; } ;
struct TYPE_5__ {TYPE_1__ inq_res; } ;
typedef TYPE_2__ tBTA_DM_SEARCH ;
typedef scalar_t__ UINT8 ;
typedef int BOOLEAN ;


 scalar_t__ BD_NAME_LEN ;
 scalar_t__* BTM_CheckEirData (scalar_t__,int ,scalar_t__*) ;
 int BTM_EIR_COMPLETE_LOCAL_NAME_TYPE ;
 int BTM_EIR_SHORTENED_LOCAL_NAME_TYPE ;
 int FALSE ;
 int TRUE ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static BOOLEAN check_eir_remote_name(tBTA_DM_SEARCH *p_search_data,
                                     UINT8 *p_remote_name, UINT8 *p_remote_name_len)
{
    UINT8 *p_eir_remote_name = ((void*)0);
    UINT8 remote_name_len = 0;


    if (p_search_data->inq_res.p_eir) {
        p_eir_remote_name = BTM_CheckEirData(p_search_data->inq_res.p_eir,
                                             BTM_EIR_COMPLETE_LOCAL_NAME_TYPE, &remote_name_len);
        if (!p_eir_remote_name) {
            p_eir_remote_name = BTM_CheckEirData(p_search_data->inq_res.p_eir,
                                                 BTM_EIR_SHORTENED_LOCAL_NAME_TYPE, &remote_name_len);
        }

        if (p_eir_remote_name) {
            if (remote_name_len > BD_NAME_LEN) {
                remote_name_len = BD_NAME_LEN;
            }

            if (p_remote_name && p_remote_name_len) {
                memcpy(p_remote_name, p_eir_remote_name, remote_name_len);
                *(p_remote_name + remote_name_len) = 0;
                *p_remote_name_len = remote_name_len;
            }

            return TRUE;
        }
    }

    return FALSE;

}
