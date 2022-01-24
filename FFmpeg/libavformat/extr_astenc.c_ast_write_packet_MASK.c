#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int fbs; } ;
struct TYPE_11__ {int channels; } ;
struct TYPE_10__ {TYPE_1__** streams; TYPE_5__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ nb_frames; TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  TYPE_5__ ASTMuxContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    ASTMuxContext *ast = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int size = pkt->size / par->channels;

    if (s->streams[0]->nb_frames == 0)
        ast->fbs = size;

    FUNC3(pb, "BLCK");
    FUNC0(pb, size); /* Block size */

    /* padding */
    FUNC1(pb, 0);
    FUNC1(pb, 0);
    FUNC1(pb, 0);

    FUNC2(pb, pkt->data, pkt->size);

    return 0;
}