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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; scalar_t__ duration; scalar_t__ pts; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_DATA_WEBVTT_IDENTIFIER ; 
 int /*<<< orphan*/  AV_PKT_DATA_WEBVTT_SETTINGS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *ctx, AVPacket *pkt)
{
    AVIOContext  *pb = ctx->pb;
    int id_size, settings_size;
    uint8_t *id, *settings;

    FUNC1(pb, "\n");

    id = FUNC0(pkt, AV_PKT_DATA_WEBVTT_IDENTIFIER,
                                 &id_size);

    if (id && id_size > 0)
        FUNC1(pb, "%.*s\n", id_size, id);

    FUNC3(pb, pkt->pts);
    FUNC1(pb, " --> ");
    FUNC3(pb, pkt->pts + pkt->duration);

    settings = FUNC0(pkt, AV_PKT_DATA_WEBVTT_SETTINGS,
                                       &settings_size);

    if (settings && settings_size > 0)
        FUNC1(pb, " %.*s", settings_size, settings);

    FUNC1(pb, "\n");

    FUNC2(pb, pkt->data, pkt->size);
    FUNC1(pb, "\n");

    return 0;
}