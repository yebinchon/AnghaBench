#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {long long min; long long max; } ;
struct TYPE_10__ {scalar_t__ type; int offset; TYPE_1__ range; scalar_t__ str; } ;
struct TYPE_9__ {scalar_t__ codec_id; } ;
struct TYPE_8__ {TYPE_3__* codecpar; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ ATTR_NAME_TYPE_INT ; 
 scalar_t__ ATTR_NAME_TYPE_STR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_6__* attr_names ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 long long FUNC6 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s,
                      AVStream *stream, PayloadContext *data,
                      const char *attr, const char *value)
{
    AVCodecParameters *par = stream->codecpar;
    int res, i;

    if (!FUNC5(attr, "config")) {
        res = FUNC4(par, value);

        if (res < 0)
            return res;
    }

    if (par->codec_id == AV_CODEC_ID_AAC) {
        /* Looking for a known attribute */
        for (i = 0; attr_names[i].str; ++i) {
            if (!FUNC2(attr, attr_names[i].str)) {
                if (attr_names[i].type == ATTR_NAME_TYPE_INT) {
                    char *end_ptr = NULL;
                    long long int val = FUNC6(value, &end_ptr, 10);
                    if (end_ptr == value || end_ptr[0] != '\0') {
                        FUNC1(s, AV_LOG_ERROR,
                               "The %s field value is not a valid number: %s\n",
                               attr, value);
                        return AVERROR_INVALIDDATA;
                    }
                    if (val < attr_names[i].range.min ||
                        val > attr_names[i].range.max) {
                        FUNC1(s, AV_LOG_ERROR,
                            "fmtp field %s should be in range [%d,%d] (provided value: %lld)",
                            attr, attr_names[i].range.min, attr_names[i].range.max, val);
                        return  AVERROR_INVALIDDATA;
                    }

                    *(int *)((char *)data+
                        attr_names[i].offset) = (int) val;
                } else if (attr_names[i].type == ATTR_NAME_TYPE_STR) {
                    char *val = FUNC3(value);
                    if (!val)
                        return FUNC0(ENOMEM);
                    *(char **)((char *)data+
                        attr_names[i].offset) = val;
                }
            }
        }
    }
    return 0;
}