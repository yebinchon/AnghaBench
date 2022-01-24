#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_4__ {int /*<<< orphan*/  codec; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
typedef  TYPE_2__ hb_audio_config_t ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(GhbValue *settings, GhbValue *asettings)
{
    // Sanitize codec
    const char        * mux_name;
    int                 title_id, mux, acodec, fallback, copy_mask, track;
    uint32_t            in_codec = 0;
    hb_audio_config_t * aconfig;
    const hb_title_t  * title;

    title_id = FUNC0(settings, "title");
    title    = FUNC5(title_id, NULL);

    mux_name  = FUNC1(settings, "FileFormat");
    mux       = FUNC10(mux_name);

    acodec    = FUNC8(asettings, "Encoder");
    fallback  = FUNC7(settings, acodec);
    copy_mask = FUNC4(settings);
    track     = FUNC0(asettings, "Track");
    aconfig   = FUNC3(title, track);
    if (aconfig != NULL)
    {
        in_codec = aconfig->in.codec;
    }
    acodec    = FUNC6(mux, in_codec, acodec,
                                       fallback, copy_mask);
    FUNC2(asettings, "Encoder",
                        FUNC9(acodec));

    // Sanitize the rest
    FUNC11(title, asettings);
}