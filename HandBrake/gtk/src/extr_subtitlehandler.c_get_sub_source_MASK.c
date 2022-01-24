#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_1__ hb_title_t ;
struct TYPE_6__ {int source; } ;
typedef  TYPE_2__ hb_subtitle_t ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int IMPORTSRT ; 
 int IMPORTSSA ; 
 int VOBSUB ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(GhbValue *settings, GhbValue *subsettings)
{
    GhbValue *import;

    import  = FUNC0(subsettings, "Import");
    if (import != NULL)
    {
        const char * format = FUNC2(import, "Format");
        if (format != NULL && !FUNC5(format, "SSA"))
        {
            return IMPORTSSA;
        }
        return IMPORTSRT;
    }

    int title_id = FUNC1(settings, "title");
    const hb_title_t *title = FUNC3(title_id, NULL);
    if (title == NULL) // No title, scan failure?
        return VOBSUB;

    GhbValue *val = FUNC0(subsettings, "Track");
    if (val == NULL) // No track, foreign audio search
        return VOBSUB;

    int track = FUNC1(subsettings, "Track");
    hb_subtitle_t *subtitle = FUNC4(title->list_subtitle, track);
    if (subtitle != NULL) // Invalid track, shouldn't happen
        return subtitle->source;

    return VOBSUB;
}