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
struct TYPE_5__ {int /*<<< orphan*/  prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {int format; char const* default_extension; } ;
typedef  TYPE_2__ hb_container_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int HB_MUX_MASK_MP4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC2 (char const*) ; 

__attribute__((used)) static const gchar*
FUNC3(signal_user_data_t *ud, GhbValue *settings)
{
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC1(settings, "FileFormat");
    mux = FUNC2(mux_id);

    if ((mux->format & HB_MUX_MASK_MP4) &&
        FUNC0(ud->prefs, "UseM4v"))
    {
        return "m4v";
    }
    return mux->default_extension;
}