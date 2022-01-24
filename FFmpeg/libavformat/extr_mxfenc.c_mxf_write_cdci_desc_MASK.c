#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  pb; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  mxf_cdci_descriptor_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AVFormatContext *s, AVStream *st)
{
    int64_t pos = FUNC2(s, st, mxf_cdci_descriptor_key);
    FUNC0(s->pb, pos);

    if (st->codecpar->codec_id == AV_CODEC_ID_H264) {
        FUNC1(s, st);
    }
}