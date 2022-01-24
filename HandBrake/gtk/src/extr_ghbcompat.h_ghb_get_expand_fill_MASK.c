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
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkBox ;

/* Variables and functions */
 scalar_t__ GTK_ALIGN_FILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_ORIENTATION_HORIZONTAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(GtkBox * box, GtkWidget * child,
                                       gboolean *expand, gboolean *fill)
{
    if (FUNC1(FUNC0(box)) ==
        GTK_ORIENTATION_HORIZONTAL)
    {
        *expand = FUNC3(child);
        *fill   = FUNC2(child) == GTK_ALIGN_FILL;
    }
    else
    {
        *expand = FUNC5(child);
        *fill   = FUNC4(child) == GTK_ALIGN_FILL;
    }
}