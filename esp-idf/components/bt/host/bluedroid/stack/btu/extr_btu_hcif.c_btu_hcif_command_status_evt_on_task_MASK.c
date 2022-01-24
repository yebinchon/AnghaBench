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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {TYPE_2__* command; int /*<<< orphan*/  context; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ command_status_hack_t ;
typedef  int /*<<< orphan*/  command_opcode_t ;
struct TYPE_6__ {int offset; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(BT_HDR *event)
{
    command_status_hack_t *hack = (command_status_hack_t *)&event->data[0];

    command_opcode_t opcode;
    uint8_t *stream = hack->command->data + hack->command->offset;
    FUNC0(opcode, stream);

    FUNC1(
        opcode,
        hack->status,
        stream,
        hack->context);

    FUNC2(hack->command);
    FUNC2(event);
}