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
struct TYPE_3__ {char* name; char* long_name; char* extensions; scalar_t__ priv_class; } ;
typedef  TYPE_1__ AVInputFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_OPT_FLAG_DECODING_PARAM ; 
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *name)
{
    const AVInputFormat *fmt = FUNC0(name);

    if (!fmt) {
        FUNC1(NULL, AV_LOG_ERROR, "Unknown format '%s'.\n", name);
        return;
    }

    FUNC2("Demuxer %s [%s]:\n", fmt->name, fmt->long_name);

    if (fmt->extensions)
        FUNC2("    Common extensions: %s.\n", fmt->extensions);

    if (fmt->priv_class)
        FUNC3(fmt->priv_class, AV_OPT_FLAG_DECODING_PARAM);
}