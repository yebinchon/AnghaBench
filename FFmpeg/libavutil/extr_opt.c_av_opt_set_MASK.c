#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  double int64_t ;
struct TYPE_16__ {int type; int flags; int offset; double min; double max; int /*<<< orphan*/  name; int /*<<< orphan*/  help; } ;
struct TYPE_15__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
typedef  TYPE_1__ AVRational ;
typedef  TYPE_2__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_OPT_FLAG_DEPRECATED ; 
 int AV_OPT_FLAG_READONLY ; 
#define  AV_OPT_TYPE_BINARY 144 
#define  AV_OPT_TYPE_BOOL 143 
#define  AV_OPT_TYPE_CHANNEL_LAYOUT 142 
#define  AV_OPT_TYPE_COLOR 141 
#define  AV_OPT_TYPE_DOUBLE 140 
#define  AV_OPT_TYPE_DURATION 139 
#define  AV_OPT_TYPE_FLAGS 138 
#define  AV_OPT_TYPE_FLOAT 137 
#define  AV_OPT_TYPE_IMAGE_SIZE 136 
#define  AV_OPT_TYPE_INT 135 
#define  AV_OPT_TYPE_INT64 134 
#define  AV_OPT_TYPE_PIXEL_FMT 133 
#define  AV_OPT_TYPE_RATIONAL 132 
#define  AV_OPT_TYPE_SAMPLE_FMT 131 
#define  AV_OPT_TYPE_STRING 130 
#define  AV_OPT_TYPE_UINT64 129 
#define  AV_OPT_TYPE_VIDEO_RATE 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 double FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC3 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC4 (double*,char const*,int) ; 
 int FUNC5 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC6 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC7 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC8 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC9 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC10 (void*,void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC11 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC12 (void*,TYPE_2__ const*,char const*,void*) ; 
 int FUNC13 (void*,TYPE_2__ const*,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int FUNC15 (void*,TYPE_2__ const*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC16(void *obj, const char *name, const char *val, int search_flags)
{
    int ret = 0;
    void *dst, *target_obj;
    const AVOption *o = FUNC3(obj, name, NULL, 0, search_flags, &target_obj);
    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (!val && (o->type != AV_OPT_TYPE_STRING &&
                 o->type != AV_OPT_TYPE_PIXEL_FMT && o->type != AV_OPT_TYPE_SAMPLE_FMT &&
                 o->type != AV_OPT_TYPE_IMAGE_SIZE && o->type != AV_OPT_TYPE_VIDEO_RATE &&
                 o->type != AV_OPT_TYPE_DURATION && o->type != AV_OPT_TYPE_COLOR &&
                 o->type != AV_OPT_TYPE_CHANNEL_LAYOUT && o->type != AV_OPT_TYPE_BOOL))
        return FUNC0(EINVAL);

    if (o->flags & AV_OPT_FLAG_READONLY)
        return FUNC0(EINVAL);

    if (o->flags & AV_OPT_FLAG_DEPRECATED)
        FUNC2(obj, AV_LOG_WARNING, "The \"%s\" option is deprecated: %s\n", name, o->help);

    dst = ((uint8_t *)target_obj) + o->offset;
    switch (o->type) {
    case AV_OPT_TYPE_BOOL:
        return FUNC7(obj, o, val, dst);
    case AV_OPT_TYPE_STRING:
        return FUNC5(obj, o, val, dst);
    case AV_OPT_TYPE_BINARY:
        return FUNC6(obj, o, val, dst);
    case AV_OPT_TYPE_FLAGS:
    case AV_OPT_TYPE_INT:
    case AV_OPT_TYPE_INT64:
    case AV_OPT_TYPE_UINT64:
    case AV_OPT_TYPE_FLOAT:
    case AV_OPT_TYPE_DOUBLE:
    case AV_OPT_TYPE_RATIONAL:
        return FUNC10(obj, target_obj, o, val, dst);
    case AV_OPT_TYPE_IMAGE_SIZE:
        return FUNC9(obj, o, val, dst);
    case AV_OPT_TYPE_VIDEO_RATE: {
        AVRational tmp;
        ret = FUNC13(obj, o, val, &tmp);
        if (ret < 0)
            return ret;
        return FUNC15(obj, o, dst, 1, tmp.den, tmp.num);
    }
    case AV_OPT_TYPE_PIXEL_FMT:
        return FUNC11(obj, o, val, dst);
    case AV_OPT_TYPE_SAMPLE_FMT:
        return FUNC12(obj, o, val, dst);
    case AV_OPT_TYPE_DURATION:
        {
            int64_t usecs = 0;
            if (val) {
                if ((ret = FUNC4(&usecs, val, 1)) < 0) {
                    FUNC2(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as duration\n", val);
                    return ret;
                }
            }
            if (usecs < o->min || usecs > o->max) {
                FUNC2(obj, AV_LOG_ERROR, "Value %f for parameter '%s' out of range [%g - %g]\n",
                       usecs / 1000000.0, o->name, o->min / 1000000.0, o->max / 1000000.0);
                return FUNC0(ERANGE);
            }
            *(int64_t *)dst = usecs;
            return 0;
        }
    case AV_OPT_TYPE_COLOR:
        return FUNC8(obj, o, val, dst);
    case AV_OPT_TYPE_CHANNEL_LAYOUT:
        if (!val || !FUNC14(val, "none")) {
            *(int64_t *)dst = 0;
        } else {
            int64_t cl = FUNC1(val);
            if (!cl) {
                FUNC2(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as channel layout\n", val);
                ret = FUNC0(EINVAL);
            }
            *(int64_t *)dst = cl;
            return ret;
        }
        break;
    }

    FUNC2(obj, AV_LOG_ERROR, "Invalid option type.\n");
    return FUNC0(EINVAL);
}