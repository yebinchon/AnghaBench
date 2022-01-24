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
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

const gchar*
FUNC5(GhbValue *settings, const hb_title_t *title, gint track)
{
    GhbValue *audio_list, *asettings;
    const gchar *lang;

    audio_list = FUNC3(settings);
    if (FUNC1(audio_list) <= track)
        return "und";
    asettings = FUNC0(audio_list, track);
    track = FUNC2(asettings, "Track");
    lang = FUNC4(title, track);
    return lang;
}