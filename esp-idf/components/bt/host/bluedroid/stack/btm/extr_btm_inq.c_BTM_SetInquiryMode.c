
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int (* supports_extended_inquiry_response ) () ;int (* supports_rssi_with_inquiry_results ) () ;} ;
typedef TYPE_1__ controller_t ;
typedef scalar_t__ UINT8 ;


 int BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_INQ_RESULT_EXTENDED ;
 scalar_t__ BTM_INQ_RESULT_STANDARD ;
 scalar_t__ BTM_INQ_RESULT_WITH_RSSI ;
 int BTM_IsDeviceUp () ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*) ;
 int BTM_WRONG_MODE ;
 int btsnd_hcic_write_inquiry_mode (scalar_t__) ;
 TYPE_1__* controller_get_interface () ;
 int stub1 () ;
 int stub2 () ;

tBTM_STATUS BTM_SetInquiryMode (UINT8 mode)
{
    const controller_t *controller = controller_get_interface();
    BTM_TRACE_API ("BTM_SetInquiryMode\n");
    if (mode == BTM_INQ_RESULT_STANDARD) {

    } else if (mode == BTM_INQ_RESULT_WITH_RSSI) {
        if (!controller->supports_rssi_with_inquiry_results()) {
            return (BTM_MODE_UNSUPPORTED);
        }
    } else if (mode == BTM_INQ_RESULT_EXTENDED) {
        if (!controller->supports_extended_inquiry_response()) {
            return (BTM_MODE_UNSUPPORTED);
        }
    } else {
        return (BTM_ILLEGAL_VALUE);
    }

    if (!BTM_IsDeviceUp()) {
        return (BTM_WRONG_MODE);
    }

    if (!btsnd_hcic_write_inquiry_mode (mode)) {
        return (BTM_NO_RESOURCES);
    }

    return (BTM_SUCCESS);
}
