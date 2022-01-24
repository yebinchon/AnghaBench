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
typedef  int /*<<< orphan*/  ws_transport_opcodes_t ;
struct TYPE_3__ {int /*<<< orphan*/  read_opcode; } ;
typedef  TYPE_1__ transport_ws_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

ws_transport_opcodes_t FUNC1(esp_transport_handle_t t)
{
    transport_ws_t *ws = FUNC0(t);
    return ws->read_opcode;
}