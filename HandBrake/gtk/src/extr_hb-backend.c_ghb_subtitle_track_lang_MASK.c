#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_1__ hb_title_t ;
struct TYPE_7__ {char const* iso639_2; } ;
typedef  TYPE_2__ hb_subtitle_t ;
typedef  int gint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 

const gchar*
FUNC4(GhbValue *settings, gint track)
{
    gint title_id, titleindex;
    const hb_title_t * title;

    title_id = FUNC0(settings, "title");
    title = FUNC2(title_id, &titleindex);
    if (title == NULL)  // Bad titleindex
        goto fail;
    if (track == -1)
        return FUNC1(settings, title, 0);
    if (track < 0)
        goto fail;

    hb_subtitle_t * sub;
    sub = FUNC3( title->list_subtitle, track);
    if (sub != NULL)
        return sub->iso639_2;

fail:
    return "und";
}