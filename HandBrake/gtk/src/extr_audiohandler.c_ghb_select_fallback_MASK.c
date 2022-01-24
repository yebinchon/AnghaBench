#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int HB_ACODEC_PASS_FLAG ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(GhbValue *settings, int acodec)
{
    gint fallback = 0;

    if (acodec & HB_ACODEC_PASS_FLAG)
    {
        fallback = FUNC3(acodec);
        if (fallback != 0)
        {
            return fallback;
        }
    }
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC0(settings, "FileFormat");
    mux = FUNC1(mux_id);

    fallback = FUNC2(settings,
                                                "AudioEncoderFallback");
    return FUNC4(acodec, 0, fallback, mux->format);
}