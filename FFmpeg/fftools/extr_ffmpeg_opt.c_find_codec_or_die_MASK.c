#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_10__ {int type; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ AVCodecDescriptor ;
typedef  TYPE_2__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (char const*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static AVCodec *FUNC7(const char *name, enum AVMediaType type, int encoder)
{
    const AVCodecDescriptor *desc;
    const char *codec_string = encoder ? "encoder" : "decoder";
    AVCodec *codec;

    codec = encoder ?
        FUNC5(name) :
        FUNC3(name);

    if (!codec && (desc = FUNC1(name))) {
        codec = encoder ? FUNC4(desc->id) :
                          FUNC2(desc->id);
        if (codec)
            FUNC0(NULL, AV_LOG_VERBOSE, "Matched %s '%s' for codec '%s'.\n",
                   codec_string, codec->name, desc->name);
    }

    if (!codec) {
        FUNC0(NULL, AV_LOG_FATAL, "Unknown %s '%s'\n", codec_string, name);
        FUNC6(1);
    }
    if (codec->type != type) {
        FUNC0(NULL, AV_LOG_FATAL, "Invalid %s type '%s'\n", codec_string, name);
        FUNC6(1);
    }
    return codec;
}