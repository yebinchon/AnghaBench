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
typedef  size_t gint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char const G_DIR_SEPARATOR ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(GtkEntry *entry)
{
    const gchar *dest;
    gint start, end;

    dest = FUNC1(entry);
    for (end = FUNC3(dest)-1; end > 0; end--)
    {
        if (dest[end] == '.')
        {
            break;
        }
    }
    for (start = end; start >= 0; start--)
    {
        if (dest[start] == G_DIR_SEPARATOR)
        {
            start++;
            break;
        }
    }
    if (start < 0) start = 0;
    if (start < end)
    {
        FUNC2(FUNC0(entry), start, end);
    }
}