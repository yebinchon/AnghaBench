
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {scalar_t__ pin_type; int pin_code; scalar_t__ pin_code_len; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct TYPE_5__ {scalar_t__ (* get_is_ready ) () ;} ;
typedef scalar_t__ PIN_CODE ;


 int BTM_TRACE_API (char*,scalar_t__,char*,scalar_t__) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_write_pin_type (scalar_t__) ;
 TYPE_2__* controller_get_interface () ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 () ;

void BTM_SetPinType (UINT8 pin_type, PIN_CODE pin_code, UINT8 pin_code_len)
{
    BTM_TRACE_API ("BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d\n",
                   pin_type, (char *) pin_code, pin_code_len);


    if ( (btm_cb.cfg.pin_type != pin_type)
            && controller_get_interface()->get_is_ready() ) {
        btsnd_hcic_write_pin_type (pin_type);
    }

    btm_cb.cfg.pin_type = pin_type;
    btm_cb.cfg.pin_code_len = pin_code_len;
    memcpy (btm_cb.cfg.pin_code, pin_code, pin_code_len);
}
