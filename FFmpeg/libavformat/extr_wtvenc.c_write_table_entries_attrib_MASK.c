#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {size_t stream_index; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_9__ thumbnail; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_14__ {char* value; int /*<<< orphan*/  key; } ;
struct TYPE_13__ {TYPE_2__** streams; int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ff_asf_metadata_conv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC11(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;
    AVDictionaryEntry *tag = 0;

    FUNC7(s);
    //FIXME: translate special tags (e.g. WM/Bitrate) to binary representation
    FUNC6(&s->metadata, ff_asf_metadata_conv, NULL);
    while ((tag = FUNC1(s->metadata, "", tag, AV_DICT_IGNORE_SUFFIX)))
        FUNC9(pb, tag->key, tag->value);

    if (wctx->thumbnail.size) {
        AVStream *st = s->streams[wctx->thumbnail.stream_index];
        tag = FUNC1(st->metadata, "title", NULL, 0);
        FUNC8(pb, 2, "WM/Picture", FUNC0(&wctx->thumbnail, tag));

        FUNC2(pb, "image/jpeg");
        FUNC3(pb, 0x10);
        FUNC2(pb, tag ? tag->value : "");

        FUNC4(pb, wctx->thumbnail.size);
        FUNC5(pb, wctx->thumbnail.data, wctx->thumbnail.size);

        FUNC10(pb, "WM/MediaThumbType", 2);
    }
}