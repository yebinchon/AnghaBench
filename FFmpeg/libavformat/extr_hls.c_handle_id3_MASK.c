#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct playlist {int id3_found; int id3_changed; int /*<<< orphan*/ * id3_deferred_extra; int /*<<< orphan*/  parent; int /*<<< orphan*/ * id3_initial; TYPE_1__* ctx; scalar_t__ id3_offset; scalar_t__ id3_mpegts_timestamp; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; scalar_t__ nb_streams; } ;
typedef  int /*<<< orphan*/  ID3v2ExtraMetaAPIC ;
typedef  int /*<<< orphan*/  ID3v2ExtraMeta ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (struct playlist*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC9(AVIOContext *pb, struct playlist *pls)
{
    AVDictionary *metadata = NULL;
    ID3v2ExtraMetaAPIC *apic = NULL;
    ID3v2ExtraMeta *extra_meta = NULL;
    int64_t timestamp = AV_NOPTS_VALUE;

    FUNC8(pls->ctx, pb, &metadata, &timestamp, &apic, &extra_meta);

    if (timestamp != AV_NOPTS_VALUE) {
        pls->id3_mpegts_timestamp = timestamp;
        pls->id3_offset = 0;
    }

    if (!pls->id3_found) {
        /* initial ID3 tags */
        FUNC0(!pls->id3_deferred_extra);
        pls->id3_found = 1;

        /* get picture attachment and set text metadata */
        if (pls->ctx->nb_streams)
            FUNC5(pls->ctx, &extra_meta);
        else
            /* demuxer not yet opened, defer picture attachment */
            pls->id3_deferred_extra = extra_meta;

        FUNC6(&metadata, &extra_meta);
        FUNC1(&pls->ctx->metadata, metadata, 0);
        pls->id3_initial = metadata;

    } else {
        if (!pls->id3_changed && FUNC7(pls, metadata, apic)) {
            FUNC3(pls->parent, "Changing ID3 metadata in HLS audio elementary stream");
            pls->id3_changed = 1;
        }
        FUNC2(&metadata);
    }

    if (!pls->id3_deferred_extra)
        FUNC4(&extra_meta);
}