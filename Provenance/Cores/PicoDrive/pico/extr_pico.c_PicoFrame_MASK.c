#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  frame_count; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 int PAHW_32X ; 
 int PAHW_MCD ; 
 int PAHW_SMS ; 
 TYPE_2__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  frame ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
  FUNC6(frame);

  Pico.m.frame_count++;

  if (PicoAHW & PAHW_SMS) {
    FUNC3();
    goto end;
  }

  if (PicoAHW & PAHW_32X) {
    FUNC0(); // also does MCD+32X
    goto end;
  }

  if (PicoAHW & PAHW_MCD) {
    FUNC2();
    goto end;
  }

  //if(Pico.video.reg[12]&0x2) Pico.video.status ^= 0x10; // change odd bit in interlace mode

  FUNC4();
  FUNC1();

end:
  FUNC5(frame);
}