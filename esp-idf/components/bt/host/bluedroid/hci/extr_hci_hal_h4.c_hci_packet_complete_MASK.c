#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  completed_packets; } ;
typedef  TYPE_1__ tL2C_LCB ;
struct TYPE_6__ {int offset; scalar_t__* data; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_ACL ; 
 int HCI_DATA_HANDLE_MASK ; 
 int /*<<< orphan*/  MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int*,int*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(BT_HDR *packet){
    uint8_t type, num_handle;
    uint16_t handle;
    uint16_t handles[MAX_L2CAP_LINKS + 4];
    uint16_t num_packets[MAX_L2CAP_LINKS + 4];
    uint8_t *stream = packet->data + packet->offset;
    tL2C_LCB  *p_lcb = NULL;

    FUNC1(type, stream);
    if (type == DATA_TYPE_ACL/* || type == DATA_TYPE_SCO*/) {
        FUNC0(handle, stream);
        handle = handle & HCI_DATA_HANDLE_MASK;
        p_lcb = FUNC5(handle);
        if (p_lcb) {
            p_lcb->completed_packets++;
        }
        if (FUNC3()){
            num_handle = FUNC4(handles, num_packets);
            if (num_handle > 0){
                FUNC2 (num_handle, handles, num_packets);
            }
        } else {
            //Send HCI_Host_Number_of_Completed_Packets next time.
        }

    }
}