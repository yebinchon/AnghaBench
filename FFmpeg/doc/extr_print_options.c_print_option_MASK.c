#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; char* name; int type; char* help; scalar_t__ unit; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int AV_OPT_FLAG_AUDIO_PARAM ; 
 int AV_OPT_FLAG_DECODING_PARAM ; 
 int AV_OPT_FLAG_ENCODING_PARAM ; 
 int AV_OPT_FLAG_SUBTITLE_PARAM ; 
 int AV_OPT_FLAG_VIDEO_PARAM ; 
#define  AV_OPT_TYPE_BINARY 135 
 scalar_t__ AV_OPT_TYPE_CONST ; 
#define  AV_OPT_TYPE_DOUBLE 134 
#define  AV_OPT_TYPE_FLAGS 133 
#define  AV_OPT_TYPE_FLOAT 132 
#define  AV_OPT_TYPE_INT 131 
#define  AV_OPT_TYPE_INT64 130 
#define  AV_OPT_TYPE_RATIONAL 129 
#define  AV_OPT_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(const AVOption *opts, const AVOption *o, int per_stream)
{
    if (!(o->flags & (AV_OPT_FLAG_DECODING_PARAM | AV_OPT_FLAG_ENCODING_PARAM)))
        return;

    FUNC0("@item -%s%s @var{", o->name, per_stream ? "[:stream_specifier]" : "");
    switch (o->type) {
    case AV_OPT_TYPE_BINARY:   FUNC0("hexadecimal string"); break;
    case AV_OPT_TYPE_STRING:   FUNC0("string");             break;
    case AV_OPT_TYPE_INT:
    case AV_OPT_TYPE_INT64:    FUNC0("integer");            break;
    case AV_OPT_TYPE_FLOAT:
    case AV_OPT_TYPE_DOUBLE:   FUNC0("float");              break;
    case AV_OPT_TYPE_RATIONAL: FUNC0("rational number");    break;
    case AV_OPT_TYPE_FLAGS:    FUNC0("flags");              break;
    default:                   FUNC0("value");              break;
    }
    FUNC0("} (@emph{");

    if (o->flags & AV_OPT_FLAG_DECODING_PARAM) {
        FUNC0("input");
        if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
            FUNC0("/");
    }
    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM) FUNC0("output");
    if (o->flags & AV_OPT_FLAG_AUDIO_PARAM)    FUNC0(",audio");
    if (o->flags & AV_OPT_FLAG_VIDEO_PARAM)    FUNC0(",video");
    if (o->flags & AV_OPT_FLAG_SUBTITLE_PARAM) FUNC0(",subtitles");

    FUNC0("})\n");
    if (o->help)
        FUNC0("%s\n", o->help);

    if (o->unit) {
        const AVOption *u;
        FUNC0("\nPossible values:\n@table @samp\n");

        for (u = opts; u->name; u++) {
            if (u->type == AV_OPT_TYPE_CONST && u->unit && !FUNC1(u->unit, o->unit))
                FUNC0("@item %s\n%s\n", u->name, u->help ? u->help : "");
        }
        FUNC0("@end table\n");
    }
}