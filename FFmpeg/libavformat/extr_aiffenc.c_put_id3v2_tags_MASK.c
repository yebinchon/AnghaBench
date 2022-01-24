#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_16__ {int /*<<< orphan*/  id3v2_version; TYPE_2__* pict_list; } ;
struct TYPE_15__ {int /*<<< orphan*/  metadata_header_padding; int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_14__ {struct TYPE_14__* next; int /*<<< orphan*/  pkt; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  TYPE_2__ AVPacketList ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AIFFOutputContext ;

/* Variables and functions */
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AIFFOutputContext *aiff)
{
    int ret;
    uint64_t pos, end, size;
    ID3v2EncContext id3v2 = { 0 };
    AVIOContext *pb = s->pb;
    AVPacketList *pict_list = aiff->pict_list;

    if (!s->metadata && !aiff->pict_list)
        return 0;

    FUNC5(pb, FUNC0('I', 'D', '3', ' '));
    FUNC4(pb, 0);
    pos = FUNC2(pb);

    FUNC7(&id3v2, pb, aiff->id3v2_version, ID3v2_DEFAULT_MAGIC);
    FUNC9(s, &id3v2);
    while (pict_list) {
        if ((ret = FUNC8(s, &id3v2, &pict_list->pkt)) < 0)
            return ret;
        pict_list = pict_list->next;
    }
    FUNC6(&id3v2, pb, s->metadata_header_padding);

    end = FUNC2(pb);
    size = end - pos;

    /* Update chunk size */
    FUNC1(pb, pos - 4, SEEK_SET);
    FUNC4(pb, size);
    FUNC1(pb, end, SEEK_SET);

    if (size & 1)
        FUNC3(pb, 0);

    return 0;
}