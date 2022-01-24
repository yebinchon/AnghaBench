#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* rx_data_rate; void* tx_data_rate; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  void* tL2CAP_CHNL_DATA_RATE ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4 (UINT16 cid, tL2CAP_CHNL_DATA_RATE tx, tL2CAP_CHNL_DATA_RATE rx)
{
    tL2C_CCB        *p_ccb;

    FUNC0 ("L2CA_SetChnlDataRate()  CID: 0x%04x, tx:%d, rx:%d", cid, tx, rx);

    /* Find the channel control block. We don't know the link it is on. */
    if ((p_ccb = FUNC3 (NULL, cid)) == NULL) {
        FUNC1 ("L2CAP - no CCB for L2CA_SetChnlDataRate, CID: %d", cid);
        return (FALSE);
    }

    p_ccb->tx_data_rate = tx;
    p_ccb->rx_data_rate = rx;

    /* Adjust channel buffer allocation */
    FUNC2 ();

    return (TRUE);
}