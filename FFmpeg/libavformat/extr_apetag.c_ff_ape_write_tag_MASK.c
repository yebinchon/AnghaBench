#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_9__ {char* value; int /*<<< orphan*/  key; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int APE_TAG_FLAG_CONTAINS_HEADER ; 
 int APE_TAG_FLAG_IS_HEADER ; 
 int APE_TAG_FOOTER_BYTES ; 
 int APE_TAG_VERSION ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 

int FUNC12(AVFormatContext *s)
{
    AVDictionaryEntry *e = NULL;
    int size, ret, count = 0;
    AVIOContext *dyn_bc = NULL;
    uint8_t *dyn_buf = NULL;

    if ((ret = FUNC4(&dyn_bc)) < 0)
        goto end;

    FUNC8(s);
    while ((e = FUNC0(s->metadata, "", e, AV_DICT_IGNORE_SUFFIX))) {
        int val_len;

        if (!FUNC10(e->key)) {
            FUNC2(s, AV_LOG_WARNING, "Non ASCII keys are not allowed\n");
            continue;
        }

        val_len = FUNC11(e->value);
        FUNC6(dyn_bc, val_len);            // value length
        FUNC6(dyn_bc, 0);                  // item flags
        FUNC5(dyn_bc, e->key);          // key
        FUNC7(dyn_bc, e->value, val_len); // value
        count++;
    }
    if (!count)
        goto end;

    size = FUNC3(dyn_bc, &dyn_buf);
    if (size <= 0)
        goto end;
    size += APE_TAG_FOOTER_BYTES;

    // header
    FUNC7(s->pb, "APETAGEX", 8);   // id
    FUNC6(s->pb, APE_TAG_VERSION);  // version
    FUNC6(s->pb, size);
    FUNC6(s->pb, count);

    // flags
    FUNC6(s->pb, APE_TAG_FLAG_CONTAINS_HEADER | APE_TAG_FLAG_IS_HEADER);
    FUNC9(s->pb, 0, 8);             // reserved

    FUNC7(s->pb, dyn_buf, size - APE_TAG_FOOTER_BYTES);

    // footer
    FUNC7(s->pb, "APETAGEX", 8);   // id
    FUNC6(s->pb, APE_TAG_VERSION);  // version
    FUNC6(s->pb, size);             // size
    FUNC6(s->pb, count);            // tag count

    // flags
    FUNC6(s->pb, APE_TAG_FLAG_CONTAINS_HEADER);
    FUNC9(s->pb, 0, 8);             // reserved

end:
    if (dyn_bc && !dyn_buf)
        FUNC3(dyn_bc, &dyn_buf);
    FUNC1(&dyn_buf);

    return ret;
}