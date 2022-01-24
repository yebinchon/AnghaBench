#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void
FUNC5(const gchar *dest_dir, GString *str, const gchar * extension)
{
    GString * uniq = FUNC3(str->str);
    int       copy = 0;

    FUNC4(uniq, "%s/%s.%s", dest_dir, str->str, extension);
    while (FUNC0(uniq->str, G_FILE_TEST_EXISTS))
    {
        FUNC4(uniq, "%s/%s (%d).%s", dest_dir, str->str, ++copy, extension);
    }
    if (copy)
    {
        FUNC1(str, " (%d)", copy);
    }
    FUNC2(uniq, TRUE);
}