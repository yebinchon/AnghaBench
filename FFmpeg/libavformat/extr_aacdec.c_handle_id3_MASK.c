#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  event_flags; int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ID3v2ExtraMeta ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMT_EVENT_FLAG_METADATA_UPDATED ; 
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    AVDictionary *metadata = NULL;
    AVIOContext ioctx;
    ID3v2ExtraMeta *id3v2_extra_meta = NULL;
    int ret;

    ret = FUNC0(s->pb, pkt, FUNC7(pkt->data) - pkt->size);
    if (ret < 0) {
        FUNC3(pkt);
        return ret;
    }

    FUNC8(&ioctx, pkt->data, pkt->size, 0, NULL, NULL, NULL, NULL);
    FUNC6(&ioctx, &metadata, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta);
    if ((ret = FUNC5(&metadata, &id3v2_extra_meta)) < 0)
        goto error;

    if (metadata) {
        if ((ret = FUNC1(&s->metadata, metadata, 0)) < 0)
            goto error;
        s->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    }

error:
    FUNC3(pkt);
    FUNC4(&id3v2_extra_meta);
    FUNC2(&metadata);

    return ret;
}