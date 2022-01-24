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
struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* DrawLineDest ; 
 int DrawLineDestIncrement ; 
 int DrawScanline ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  HighCol ; 
 scalar_t__ HighColIncrement ; 
 TYPE_2__ Pico ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int skip_next_line ; 

__attribute__((used)) static void FUNC5(int line, int offs, int sh, int bgc)
{
  int skip = 0;

  if (skip_next_line > 0) {
    skip_next_line--;
    return;
  }

  DrawScanline = line;
  if (&PicoScanBegin != NULL)
    skip = FUNC3(line + offs);

  if (skip) {
    skip_next_line = skip - 1;
    return;
  }

  // Draw screen:
  FUNC0(bgc, sh);
  if (Pico.video.reg[1]&0x40)
    FUNC1(sh);

  if (&FinalizeLine != NULL)
    FUNC2(sh, line);

  if (&PicoScanEnd != NULL)
    skip_next_line = FUNC4(line + offs);

  HighCol += HighColIncrement;
  DrawLineDest = (char *)DrawLineDest + DrawLineDestIncrement;
}