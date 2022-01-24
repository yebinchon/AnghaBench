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
struct parport_joypad {int /*<<< orphan*/  buttons; scalar_t__* button_enable; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PPRDATA ; 
 int /*<<< orphan*/  PPRSTATUS ; 
 char FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct parport_joypad *pad)
{
   /* RetroArch uses an extended version of the Linux
   * Multisystem 2-button joystick protocol for parallel port
   * joypads:
   *
   * | Function    | Pin | Register | Bit | Active |
   * |-------------|-----|----------|-----|--------|
   * | Up          | 2   | Data     | 0   | Low    |
   * | Down        | 3   | Data     | 1   | Low    |
   * | Left        | 4   | Data     | 2   | Low    |
   * | Right       | 5   | Data     | 3   | Low    |
   * | A           | 6   | Data     | 4   | Low    |
   * | B           | 7   | Data     | 5   | Low    |
   * | Start       | 8   | Data     | 6   | Low    |
   * | Select      | 9   | Data     | 7   | Low    |
   * | Menu toggle | 10  | Status   | 6   | Low    |
   * | X           | 11  | Status   | 7   | Low*   |
   * | Y           | 12  | Status   | 5   | Low    |
   * | L1          | 13  | Status   | 4   | Low    |
   * | R1          | 15  | Status   | 3   | Low    |
   *
   * (*) Pin is hardware inverted, but RetroArch inverts it
   *     back again so the same pullup scheme may be used for
   *     all pins.
   *
   * Pin 1 is set high so it can be used for pullups.
   *
   * RetroArch does not perform debouncing, and so long as
   * the button settling time is less than the frame time
   * no bouncing will be observed. This replicates the latching
   * behavior common in old games consoles. For optimum latency
   * and jitter a high performance debouncing routine should be
   * implemented in the controller hardware.
   */

   int i;
   char data;
   char status;

   if (FUNC4(pad->fd, PPRDATA, &data) < 0)
      return;
   if (FUNC4(pad->fd, PPRSTATUS, &status) < 0)
      return;

   for (i = 0; i < 8; i++)
   {
      if (!(data & FUNC3(1 << i)) && pad->button_enable[i])
         FUNC2(pad->buttons, i);
      else
         FUNC0(pad->buttons, i);
   }
   for (i = 3; i < 8; i++)
   {
      if (!(status & FUNC3(1 << i)) && pad->button_enable[i + 5])
         FUNC2(pad->buttons, i + 5);
      else
         FUNC0(pad->buttons, i + 5);
   }

   if (FUNC1(pad->buttons, 12) && pad->button_enable[12])
      FUNC0(pad->buttons, 12);
   else
      FUNC2(pad->buttons, 12);
}