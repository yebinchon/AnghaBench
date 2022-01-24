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
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ AVCodecDescriptor ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(const char *name, int encoder)
{
    const AVCodecDescriptor *desc;
    const AVCodec *codec;

    if (!name) {
        FUNC0(NULL, AV_LOG_ERROR, "No codec name specified.\n");
        return;
    }

    codec = encoder ? FUNC3(name) :
                      FUNC2(name);

    if (codec)
        FUNC5(codec);
    else if ((desc = FUNC1(name))) {
        int printed = 0;

        while ((codec = FUNC4(desc->id, codec, encoder))) {
            printed = 1;
            FUNC5(codec);
        }

        if (!printed) {
            FUNC0(NULL, AV_LOG_ERROR, "Codec '%s' is known to FFmpeg, "
                   "but no %s for it are available. FFmpeg might need to be "
                   "recompiled with additional external libraries.\n",
                   name, encoder ? "encoders" : "decoders");
        }
    } else {
        FUNC0(NULL, AV_LOG_ERROR, "Codec '%s' is not recognized by FFmpeg.\n",
               name);
    }
}