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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UINT_MAX ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVStream *st, uint32_t tag,
                        uint32_t size)
{
    AVIOContext *pb = s->pb;
    char key[5]     = { 0 };
    char *value;

    size += (size & 1);

    if (size == UINT_MAX)
        return FUNC0(EINVAL);
    value = FUNC4(size + 1);
    if (!value)
        return FUNC0(ENOMEM);
    if (FUNC5(pb, value, size) != size) {
        FUNC3(&value);
        return AVERROR_INVALIDDATA;
    }
    value[size] = 0;

    FUNC1(key, tag);

    return FUNC2(st ? &st->metadata : &s->metadata, key, value,
                       AV_DICT_DONT_STRDUP_VAL);
}