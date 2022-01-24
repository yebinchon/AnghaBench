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
struct TYPE_7__ {int depth; } ;
typedef  TYPE_1__ hb_preset_index_t ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 

char*
FUNC9(hb_preset_index_t *path, const char * sep, gboolean escape)
{
    int                ii;
    GString           *gstr;
    hb_preset_index_t *tmp;
    GhbValue          *dict;

    gstr = FUNC5("");
    tmp  = FUNC8(path);
    for (ii = 1; ii <= path->depth; ii++)
    {
        const char *name;
        tmp->depth = ii;
        dict = FUNC7(tmp);
        if (dict == NULL)
        {
            break;
        }
        name = FUNC6(dict, "PresetName");
        if (name != NULL)
        {
            FUNC3(gstr, sep);
            if (escape)
            {
                char * esc = FUNC2(name, -1);
                FUNC3(gstr, esc);
                FUNC1(esc);
            }
            else
            {
                FUNC3(gstr, name);
            }
        }
    }
    FUNC0(tmp);
    char *str = FUNC4(gstr, FALSE);
    return str;
}