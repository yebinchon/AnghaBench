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
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static gboolean
FUNC2(gchar *str)
{
    if (str == NULL) return FALSE;
    str = FUNC0(FUNC1(str));
    while (*str)
    {
        if (*str == ' ')
        {
            return FALSE;
        }
        if (*str >= 'a' && *str <= 'z')
        {
            return FALSE;
        }
        str++;
    }
    return TRUE;
}