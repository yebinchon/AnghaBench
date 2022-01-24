#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tINQ_BDADDR ;
struct TYPE_7__ {int mode; scalar_t__ max_resps; int /*<<< orphan*/  duration; } ;
typedef  TYPE_2__ tBTM_INQ_PARMS ;
struct TYPE_8__ {int inq_active; scalar_t__ max_bd_entries; int /*<<< orphan*/ * p_bd_db; int /*<<< orphan*/  per_min_delay; int /*<<< orphan*/  per_max_delay; TYPE_2__ inqparms; } ;
typedef  TYPE_3__ tBTM_INQUIRY_VAR_ST ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_6__ {int /*<<< orphan*/  inqfilt_active; int /*<<< orphan*/  state; int /*<<< orphan*/  inq_active; } ;
struct TYPE_9__ {TYPE_1__ btm_inq_vars; } ;
typedef  int /*<<< orphan*/  LAP ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLI_INQ_EVT ; 
 int BTM_BR_INQUIRY_MASK ; 
 scalar_t__ BTM_INQ_DB_SIZE ; 
 int BTM_LIMITED_INQUIRY_ACTIVE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int BTM_PERIODIC_INQUIRY_ACTIVE ; 
 int BTM_SSP_INQUIRY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BT_DEFAULT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  general_inq_lap ; 
 int /*<<< orphan*/  limited_inq_lap ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7 (tBTM_INQUIRY_VAR_ST *p_inq)
{
    const LAP       *lap;
    tBTM_INQ_PARMS  *p_inqparms = &p_inq->inqparms;

#if (BTM_INQ_DEBUG == TRUE)
    FUNC0 ("btm_initiate_inquiry: inq_active:0x%x state:%d inqfilt_active:%d\n",
                     btm_cb.btm_inq_vars.inq_active, btm_cb.btm_inq_vars.state, btm_cb.btm_inq_vars.inqfilt_active);
#endif
    FUNC1 (BTM_BLI_INQ_EVT);

    if (p_inq->inq_active & BTM_SSP_INQUIRY_ACTIVE) {
        FUNC3 (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        return;
    }

    /* Make sure the number of responses doesn't overflow the database configuration */
    p_inqparms->max_resps = (UINT8)((p_inqparms->max_resps <= BTM_INQ_DB_SIZE) ? p_inqparms->max_resps : BTM_INQ_DB_SIZE);

    lap = (p_inq->inq_active & BTM_LIMITED_INQUIRY_ACTIVE) ? &limited_inq_lap : &general_inq_lap;

    if (p_inq->inq_active & BTM_PERIODIC_INQUIRY_ACTIVE) {
        if (!FUNC5 (p_inq->per_max_delay,
                                      p_inq->per_min_delay,
                                      *lap, p_inqparms->duration,
                                      p_inqparms->max_resps)) {
            FUNC3 (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        }
    } else {
        FUNC2();

        /* Allocate memory to hold bd_addrs responding */
        if ((p_inq->p_bd_db = (tINQ_BDADDR *)FUNC6(BT_DEFAULT_BUFFER_SIZE)) != NULL) {
            p_inq->max_bd_entries = (UINT16)(BT_DEFAULT_BUFFER_SIZE / sizeof(tINQ_BDADDR));
            /*            BTM_TRACE_DEBUG("btm_initiate_inquiry: memory allocated for %d bdaddrs",
                                          p_inq->max_bd_entries); */
        }

        if (!FUNC4(*lap, p_inqparms->duration, 0)) {
            FUNC3 (BTM_NO_RESOURCES, (UINT8)(p_inqparms->mode & BTM_BR_INQUIRY_MASK));
        }
    }
}