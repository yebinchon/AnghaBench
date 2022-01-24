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
struct TYPE_9__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_WEBP ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    AVStream *st;

    if (s->nb_streams != 1) {
        FUNC1(s, AV_LOG_ERROR, "Only exactly 1 stream is supported\n");
        return FUNC0(EINVAL);
    }
    st = s->streams[0];
    if (st->codecpar->codec_id != AV_CODEC_ID_WEBP) {
        FUNC1(s, AV_LOG_ERROR, "Only WebP is supported\n");
        return FUNC0(EINVAL);
    }
    FUNC2(st, 24, 1, 1000);

    return 0;
}