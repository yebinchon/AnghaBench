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
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const gchar*
FUNC1(
    const gchar *name,
    const gchar **attr_names,
    const gchar **attr_values)
{
    gint ii;

    if (attr_names == NULL) return NULL;
    for (ii = 0; attr_names[ii] != NULL; ii++)
    {
        if (FUNC0(name, attr_names[ii]) == 0)
            return attr_values[ii];
    }
    return NULL;
}