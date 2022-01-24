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
struct TYPE_2__ {char* opt; char* desc; } ;

/* Variables and functions */
 int PRINT_LINES_PAUSE ; 
 TYPE_1__* helptext ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
  int i;
  FUNC1("Usage: curl [options...] <url>");
  for(i = 0; helptext[i].opt; i++) {
    FUNC0(" %-19s %s\n", helptext[i].opt, helptext[i].desc);
#ifdef PRINT_LINES_PAUSE
    if(i && ((i % PRINT_LINES_PAUSE) == 0))
      tool_pressanykey();
#endif
  }
}