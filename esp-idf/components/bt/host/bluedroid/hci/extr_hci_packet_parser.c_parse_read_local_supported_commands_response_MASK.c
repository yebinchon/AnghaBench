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
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_READ_LOCAL_SUPPORTED_CMDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(
    BT_HDR *response,
    uint8_t *supported_commands_ptr,
    size_t supported_commands_length)
{

    uint8_t *stream = FUNC3(response, HCI_READ_LOCAL_SUPPORTED_CMDS, supported_commands_length /* bytes after */);
    FUNC1(stream != NULL);
    FUNC0(supported_commands_ptr, stream, (int)supported_commands_length);

    FUNC2(response);
}