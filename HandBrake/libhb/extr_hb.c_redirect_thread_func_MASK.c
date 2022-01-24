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
struct TYPE_2__ {int _file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int*) ; 
 TYPE_1__* stderr ; 

__attribute__((used)) static void FUNC5(void * _data)
{
    int pfd[2];
    if (FUNC4(pfd))
       return;
#if defined( SYS_MINGW )
    // dup2 doesn't work on windows for some stupid reason
    stderr->_file = pfd[1];
#else
    FUNC0(pfd[1], /*stderr*/ 2);
#endif
    FILE * log_f = FUNC1(pfd[0], "rb");

    char line_buffer[500];
    while(FUNC2(line_buffer, 500, log_f) != NULL)
    {
        FUNC3(line_buffer);
    }
}