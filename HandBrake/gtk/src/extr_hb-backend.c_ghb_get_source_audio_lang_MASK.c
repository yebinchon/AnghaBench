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
typedef  scalar_t__ gint ;
typedef  char gchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

const gchar*
FUNC3(const hb_title_t *title, gint track)
{
    hb_audio_config_t * audio;
    const gchar *lang = "und";

    FUNC0("ghb_lookup_1st_audio_lang ()\n");
    if (title == NULL)
        return lang;
    if (FUNC2( title->list_audio ) <= track)
        return lang;

    audio = FUNC1(title->list_audio, track);
    if (audio == NULL)
        return lang;

    lang = audio->lang.iso639_2;
    return lang;
}