#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ wiiusb_hid_t ;
typedef  int /*<<< orphan*/  input_bits_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data,
      unsigned port, input_bits_t *state)
{
  wiiusb_hid_t *hid = (wiiusb_hid_t*)data;
  if (hid)
  {
    FUNC1(&hid->connections[port], port, state);
    return;
  }
  FUNC0(state);
}