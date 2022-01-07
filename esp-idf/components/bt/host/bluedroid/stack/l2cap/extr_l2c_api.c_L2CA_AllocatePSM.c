
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int dyn_psm; } ;
typedef scalar_t__ BOOLEAN ;


 int BRCM_RESERVED_PSM_END ;
 int BRCM_RESERVED_PSM_START ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__ l2cb ;
 int * l2cu_find_rcb_by_psm (int) ;

UINT16 L2CA_AllocatePSM(void)
{
    BOOLEAN done = FALSE;
    UINT16 psm = l2cb.dyn_psm;

    while (!done) {
        psm += 2;
        if (psm > 0xfeff) {
            psm = 0x1001;
        } else if (psm & 0x0100) {

            psm += 0x0100;
        }


        if ((BRCM_RESERVED_PSM_START <= psm) && (psm <= BRCM_RESERVED_PSM_END)) {
            continue;
        }


        if ((l2cu_find_rcb_by_psm (psm)) == ((void*)0)) {
            done = TRUE;
        }
    }
    l2cb.dyn_psm = psm;

    return (psm);
}
