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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int offset; scalar_t__ type; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  const AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_OPT_TYPE_BINARY ; 
 scalar_t__ AV_OPT_TYPE_CONST ; 
 scalar_t__ AV_OPT_TYPE_DICT ; 
 scalar_t__ AV_OPT_TYPE_STRING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (void const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int) ; 
 int FUNC9 (scalar_t__) ; 

int FUNC10(void *dst, const void *src)
{
    const AVOption *o = NULL;
    const AVClass *c;
    int ret = 0;

    if (!src)
        return FUNC0(EINVAL);

    c = *(AVClass **)src;
    if (!c || c != *(AVClass **)dst)
        return FUNC0(EINVAL);

    while ((o = FUNC6(src, o))) {
        void *field_dst = (uint8_t *)dst + o->offset;
        void *field_src = (uint8_t *)src + o->offset;
        uint8_t **field_dst8 = (uint8_t **)field_dst;
        uint8_t **field_src8 = (uint8_t **)field_src;

        if (o->type == AV_OPT_TYPE_STRING) {
            if (*field_dst8 != *field_src8)
                FUNC4(field_dst8);
            *field_dst8 = FUNC7(*field_src8);
            if (*field_src8 && !*field_dst8)
                ret = FUNC0(ENOMEM);
        } else if (o->type == AV_OPT_TYPE_BINARY) {
            int len = *(int *)(field_src8 + 1);
            if (*field_dst8 != *field_src8)
                FUNC4(field_dst8);
            *field_dst8 = FUNC5(*field_src8, len);
            if (len && !*field_dst8) {
                ret = FUNC0(ENOMEM);
                len = 0;
            }
            *(int *)(field_dst8 + 1) = len;
        } else if (o->type == AV_OPT_TYPE_CONST) {
            // do nothing
        } else if (o->type == AV_OPT_TYPE_DICT) {
            AVDictionary **sdict = (AVDictionary **) field_src;
            AVDictionary **ddict = (AVDictionary **) field_dst;
            if (*sdict != *ddict)
                FUNC3(ddict);
            *ddict = NULL;
            FUNC1(ddict, *sdict, 0);
            if (FUNC2(*sdict) != FUNC2(*ddict))
                ret = FUNC0(ENOMEM);
        } else {
            int size = FUNC9(o->type);
            if (size < 0)
                ret = size;
            else
                FUNC8(field_dst, field_src, size);
        }
    }
    return ret;
}