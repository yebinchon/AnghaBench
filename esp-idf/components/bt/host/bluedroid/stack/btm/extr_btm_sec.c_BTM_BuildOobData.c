
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int bd_name; } ;
struct TYPE_6__ {int dev_class; } ;
struct TYPE_10__ {TYPE_2__ cfg; TYPE_1__ devcb; } ;
struct TYPE_9__ {TYPE_3__* (* get_address ) () ;} ;
struct TYPE_8__ {int address; } ;
typedef int BT_OCTET16 ;


 int ARRAY_TO_STREAM (scalar_t__*,int ,scalar_t__) ;
 int BDADDR_TO_STREAM (scalar_t__*,int ) ;
 scalar_t__ BTM_EIR_COMPLETE_LOCAL_NAME_TYPE ;
 scalar_t__ BTM_EIR_OOB_COD_TYPE ;
 scalar_t__ BTM_EIR_OOB_SSP_HASH_C_TYPE ;
 scalar_t__ BTM_EIR_OOB_SSP_RAND_R_TYPE ;
 scalar_t__ BTM_EIR_SHORTENED_LOCAL_NAME_TYPE ;
 scalar_t__ BTM_OOB_COD_SIZE ;
 scalar_t__ BTM_OOB_HASH_C_SIZE ;
 scalar_t__ BTM_OOB_MANDATORY_SIZE ;
 scalar_t__ BTM_OOB_RAND_R_SIZE ;
 int DEVCLASS_TO_STREAM (scalar_t__*,int ) ;
 int UINT16_TO_STREAM (scalar_t__*,scalar_t__) ;
 TYPE_5__ btm_cb ;
 TYPE_4__* controller_get_interface () ;
 scalar_t__ strlen (int ) ;
 TYPE_3__* stub1 () ;

UINT16 BTM_BuildOobData(UINT8 *p_data, UINT16 max_len, BT_OCTET16 c,
                        BT_OCTET16 r, UINT8 name_len)
{
    UINT8 *p = p_data;
    UINT16 len = 0;





    if (p_data && max_len >= BTM_OOB_MANDATORY_SIZE) {

        UINT16_TO_STREAM(p, len);
        BDADDR_TO_STREAM(p, controller_get_interface()->get_address()->address);

        len = BTM_OOB_MANDATORY_SIZE;
        max_len -= len;




        UINT16 delta = BTM_OOB_HASH_C_SIZE + 2;
        if (max_len >= delta) {
            *p++ = BTM_OOB_HASH_C_SIZE + 1;
            *p++ = BTM_EIR_OOB_SSP_HASH_C_TYPE;
            ARRAY_TO_STREAM(p, c, BTM_OOB_HASH_C_SIZE);
            len += delta;
            max_len -= delta;
        }


        delta = BTM_OOB_RAND_R_SIZE + 2;
        if (max_len >= delta) {
            *p++ = BTM_OOB_RAND_R_SIZE + 1;
            *p++ = BTM_EIR_OOB_SSP_RAND_R_TYPE;
            ARRAY_TO_STREAM(p, r, BTM_OOB_RAND_R_SIZE);
            len += delta;
            max_len -= delta;
        }


        delta = BTM_OOB_COD_SIZE + 2;
        if (max_len >= delta) {
            *p++ = BTM_OOB_COD_SIZE + 1;
            *p++ = BTM_EIR_OOB_COD_TYPE;
            DEVCLASS_TO_STREAM(p, btm_cb.devcb.dev_class);
            len += delta;
            max_len -= delta;
        }
        p = p_data;
        UINT16_TO_STREAM(p, len);
    }
    return len;
}
