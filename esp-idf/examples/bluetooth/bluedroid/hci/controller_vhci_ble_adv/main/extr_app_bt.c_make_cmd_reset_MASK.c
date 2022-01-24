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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  H4_TYPE_COMMAND ; 
 int /*<<< orphan*/  HCI_H4_CMD_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  HCI_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC2(uint8_t *buf)
{
    FUNC1 (buf, H4_TYPE_COMMAND);
    FUNC0 (buf, HCI_RESET);
    FUNC1 (buf, 0);
    return HCI_H4_CMD_PREAMBLE_SIZE;
}