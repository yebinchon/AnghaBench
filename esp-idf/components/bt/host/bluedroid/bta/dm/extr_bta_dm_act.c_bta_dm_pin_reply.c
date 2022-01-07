
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int trusted_mask ;
struct TYPE_4__ {int bd_addr; int * p_pin; int pin_len; scalar_t__ accept; } ;
struct TYPE_5__ {TYPE_1__ pin_reply; } ;
typedef TYPE_2__ tBTA_DM_MSG ;
typedef int UINT32 ;


 int BTM_NOT_AUTHORIZED ;
 int BTM_PINCodeReply (int ,int ,int ,int *,int *) ;
 int * BTM_ReadTrustedMask (int ) ;
 int BTM_SEC_SERVICE_ARRAY_SIZE ;
 int BTM_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

void bta_dm_pin_reply (tBTA_DM_MSG *p_data)
{

    UINT32 trusted_mask[BTM_SEC_SERVICE_ARRAY_SIZE];
    UINT32 *current_trusted_mask;

    current_trusted_mask = BTM_ReadTrustedMask(p_data->pin_reply.bd_addr);

    if (current_trusted_mask) {
        memcpy(trusted_mask, current_trusted_mask, sizeof(trusted_mask));
    } else {
        memset(trusted_mask, 0, sizeof(trusted_mask));
    }

    if (p_data->pin_reply.accept) {

        BTM_PINCodeReply(p_data->pin_reply.bd_addr, BTM_SUCCESS, p_data->pin_reply.pin_len, p_data->pin_reply.p_pin, trusted_mask );
    } else {
        BTM_PINCodeReply(p_data->pin_reply.bd_addr, BTM_NOT_AUTHORIZED, 0, ((void*)0), trusted_mask );
    }

}
