#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* tag; struct TYPE_7__* next; TYPE_1__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  meta; void* end; void* start; int /*<<< orphan*/  element_id; } ;
typedef  TYPE_1__ ID3v2ExtraMetaCHAP ;
typedef  TYPE_2__ ID3v2ExtraMeta ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ff_id3v2_34_metadata_conv ; 
 int /*<<< orphan*/  ff_id3v2_4_metadata_conv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC9(AVFormatContext *s, AVIOContext *pb, int len, const char *ttag, ID3v2ExtraMeta **extra_meta, int isv34)
{
    int taglen;
    char tag[5];
    ID3v2ExtraMeta *new_extra = NULL;
    ID3v2ExtraMetaCHAP *chap  = NULL;

    new_extra = FUNC1(sizeof(*new_extra));
    chap      = FUNC1(sizeof(*chap));

    if (!new_extra || !chap)
        goto fail;

    if (FUNC5(s, pb, 0, &chap->element_id, &len) < 0)
        goto fail;

    if (len < 16)
        goto fail;

    chap->start = FUNC2(pb);
    chap->end   = FUNC2(pb);
    FUNC4(pb, 8);

    len -= 16;
    while (len > 10) {
        if (FUNC3(pb, tag, 4) < 4)
            goto fail;
        tag[4] = 0;
        taglen = FUNC2(pb);
        FUNC4(pb, 2);
        len -= 10;
        if (taglen < 0 || taglen > len)
            goto fail;
        if (tag[0] == 'T')
            FUNC8(s, pb, taglen, &chap->meta, tag);
        else
            FUNC4(pb, taglen);
        len -= taglen;
    }

    FUNC6(&chap->meta, NULL, ff_id3v2_34_metadata_conv);
    FUNC6(&chap->meta, NULL, ff_id3v2_4_metadata_conv);

    new_extra->tag  = "CHAP";
    new_extra->data = chap;
    new_extra->next = *extra_meta;
    *extra_meta     = new_extra;

    return;

fail:
    if (chap)
        FUNC7(chap);
    FUNC0(&new_extra);
}