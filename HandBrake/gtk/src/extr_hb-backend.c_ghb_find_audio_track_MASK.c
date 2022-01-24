#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_6__ {char* iso639_2; } ;
struct TYPE_8__ {TYPE_1__ lang; } ;
typedef  TYPE_3__ hb_audio_config_t ;
typedef  int gint ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 

gint
FUNC3(const hb_title_t *title, const gchar *lang, int start)
{
    hb_audio_config_t * audio;
    gint ii, count = 0;

    if (title != NULL)
    {
        count = FUNC1(title->list_audio);
    }

    for (ii = start; ii < count; ii++)
    {
        audio = FUNC0(title->list_audio, ii);
        if (!FUNC2(lang, audio->lang.iso639_2) || !FUNC2(lang, "und"))
        {
            return ii;
        }
    }
    return -1;
}