#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ANCS_TAG ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*,int,int) ; 
 char* FUNC2 (int) ; 

void FUNC3(uint8_t *message, uint16_t message_len)
{
    if (!message || message_len < 5) {
        return;
    }

    uint8_t EventID    = message[0];
    char    *EventIDS  = FUNC2(EventID);
    uint8_t EventFlags = message[1];
    uint8_t CategoryID = message[2];
    char    *Cidstr    = FUNC0(CategoryID);
    uint8_t CategoryCount = message[3];
    uint32_t NotificationUID = (message[4]) | (message[5]<< 8) | (message[6]<< 16) | (message[7] << 24);
    FUNC1(BLE_ANCS_TAG, "EventID:%s EventFlags:0x%x CategoryID:%s CategoryCount:%d NotificationUID:%d", EventIDS, EventFlags, Cidstr, CategoryCount, NotificationUID);
}