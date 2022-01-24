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
struct s_write {int dummy; } ;
struct eia608_screen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eia608_screen*) ; 
 struct eia608_screen* FUNC1 (struct s_write*) ; 
 struct eia608_screen* FUNC2 (struct s_write*) ; 

void FUNC3 (struct s_write *wb, int displayed)
{
    struct eia608_screen *buf;
    if (displayed)
    {
        buf = FUNC2(wb);
    }
    else
    {
        buf = FUNC1(wb);
    }
    FUNC0 (buf);
}