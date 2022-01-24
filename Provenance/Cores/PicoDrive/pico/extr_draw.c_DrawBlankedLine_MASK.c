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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* DrawLineDest ; 
 int DrawLineDestIncrement ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  HighCol ; 
 scalar_t__ HighColIncrement ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int line, int offs, int sh, int bgc)
{
  if (&PicoScanBegin != NULL)
    FUNC2(line + offs);

  FUNC0(bgc, sh);

  if (&FinalizeLine != NULL)
    FUNC1(sh, line);

  if (&PicoScanEnd != NULL)
    FUNC3(line + offs);

  HighCol += HighColIncrement;
  DrawLineDest = (char *)DrawLineDest + DrawLineDestIncrement;
}