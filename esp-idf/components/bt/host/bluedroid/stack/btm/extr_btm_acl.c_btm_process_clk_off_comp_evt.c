
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;
struct TYPE_3__ {int clock_offset; } ;


 int BTM_TRACE_DEBUG (char*) ;
 size_t MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 size_t btm_handle_to_acl_index (int ) ;

void btm_process_clk_off_comp_evt (UINT16 hci_handle, UINT16 clock_offset)
{
    UINT8 xx;
    BTM_TRACE_DEBUG ("btm_process_clk_off_comp_evt\n");

    if ((xx = btm_handle_to_acl_index(hci_handle)) < MAX_L2CAP_LINKS) {
        btm_cb.acl_db[xx].clock_offset = clock_offset;
    }
}
