#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 scalar_t__ HCI_COMMAND_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 

__attribute__((used)) static BT_HDR *FUNC3(uint16_t opcode, size_t parameter_size, uint8_t **stream_out)
{
    BT_HDR *packet = FUNC2(HCI_COMMAND_PREAMBLE_SIZE + parameter_size);

    uint8_t *stream = packet->data;
    FUNC0(stream, opcode);
    FUNC1(stream, parameter_size);

    if (stream_out != NULL) {
        *stream_out = stream;
    }

    return packet;
}