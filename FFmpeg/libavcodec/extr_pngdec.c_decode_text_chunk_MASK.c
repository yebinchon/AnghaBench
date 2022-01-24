#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {unsigned int len; } ;
struct TYPE_7__ {int /*<<< orphan*/  const* buffer; } ;
struct TYPE_8__ {TYPE_1__ gb; } ;
typedef  TYPE_2__ PNGDecContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_3__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_DICT_DONT_STRDUP_KEY ; 
 int AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_3__*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(PNGDecContext *s, uint32_t length, int compressed,
                             AVDictionary **dict)
{
    int ret, method;
    const uint8_t *data        = s->gb.buffer;
    const uint8_t *data_end    = data + length;
    const uint8_t *keyword     = data;
    const uint8_t *keyword_end = FUNC6(keyword, 0, data_end - keyword);
    uint8_t *kw_utf8 = NULL, *text, *txt_utf8 = NULL;
    unsigned text_len;
    AVBPrint bp;

    if (!keyword_end)
        return AVERROR_INVALIDDATA;
    data = keyword_end + 1;

    if (compressed) {
        if (data == data_end)
            return AVERROR_INVALIDDATA;
        method = *(data++);
        if (method)
            return AVERROR_INVALIDDATA;
        if ((ret = FUNC4(&bp, data, data_end)) < 0)
            return ret;
        text_len = bp.len;
        ret = FUNC1(&bp, (char **)&text);
        if (ret < 0)
            return ret;
    } else {
        text = (uint8_t *)data;
        text_len = data_end - text;
    }

    kw_utf8  = FUNC5(keyword, keyword_end - keyword);
    txt_utf8 = FUNC5(text, text_len);
    if (text != data)
        FUNC3(text);
    if (!(kw_utf8 && txt_utf8)) {
        FUNC3(kw_utf8);
        FUNC3(txt_utf8);
        return FUNC0(ENOMEM);
    }

    FUNC2(dict, kw_utf8, txt_utf8,
                AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    return 0;
}