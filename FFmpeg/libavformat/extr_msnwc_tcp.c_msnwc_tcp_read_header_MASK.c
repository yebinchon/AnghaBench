#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MIMIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char,char,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *ctx)
{
    AVIOContext *pb = ctx->pb;
    AVCodecParameters *par;
    AVStream *st;

    st = FUNC3(ctx, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    par             = st->codecpar;
    par->codec_type = AVMEDIA_TYPE_VIDEO;
    par->codec_id   = AV_CODEC_ID_MIMIC;
    par->codec_tag  = FUNC1('M', 'L', '2', '0');

    FUNC6(st, 32, 1, 1000);

    /* Some files start with "connected\r\n\r\n".
     * So skip until we find the first byte of struct size */
    while(FUNC5(pb) != HEADER_SIZE && !FUNC4(pb)) ;

    if(FUNC4(pb)) {
        FUNC2(ctx, AV_LOG_ERROR, "Could not find valid start.\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}