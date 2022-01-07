
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_2__ {scalar_t__ (* supports_extended_inquiry_response ) () ;} ;
typedef int BT_HDR ;
typedef int BOOLEAN ;


 int BTM_MODE_UNSUPPORTED ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*) ;
 int btsnd_hcic_write_ext_inquiry_response (int *,int ) ;
 TYPE_1__* controller_get_interface () ;
 int osi_free (int *) ;
 scalar_t__ stub1 () ;

tBTM_STATUS BTM_WriteEIR( BT_HDR *p_buff, BOOLEAN fec_required)
{
    if (controller_get_interface()->supports_extended_inquiry_response()) {
        BTM_TRACE_API("Write Extended Inquiry Response to controller\n");
        btsnd_hcic_write_ext_inquiry_response (p_buff, fec_required);
        return BTM_SUCCESS;
    } else {
        osi_free(p_buff);
        return BTM_MODE_UNSUPPORTED;
    }
}
