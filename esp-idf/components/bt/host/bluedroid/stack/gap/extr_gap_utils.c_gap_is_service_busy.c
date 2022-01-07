
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ event; scalar_t__ in_use; } ;
typedef TYPE_1__ tGAP_INFO ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* blk; } ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ GAP_MAX_BLOCKS ;
 int TRUE ;
 TYPE_2__ gap_cb ;

BOOLEAN gap_is_service_busy (UINT16 request)
{
    tGAP_INFO *p_cb = &gap_cb.blk[0];
    UINT8 x;

    for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++) {
        if (p_cb->in_use && p_cb->event == request) {
            return (TRUE);
        }
    }


    return (FALSE);
}
