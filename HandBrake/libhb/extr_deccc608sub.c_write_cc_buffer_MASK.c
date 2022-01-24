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
struct s_write {int new_sentence; } ;
struct eia608_screen {scalar_t__ dirty; } ;

/* Variables and functions */
 struct eia608_screen* FUNC0 (struct s_write*) ; 
 int FUNC1 (struct eia608_screen*,struct s_write*) ; 

__attribute__((used)) static int FUNC2(struct s_write *wb)
{
    struct eia608_screen *data;
    int wrote_something=0;

    data = FUNC0(wb);
    if (!data->dirty)
        return 0;
    wb->new_sentence=1;
    wrote_something = FUNC1(data, wb);
    data->dirty = 0;
    return wrote_something;
}