#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__** streams; } ;
struct TYPE_5__ {TYPE_3__* codecpar; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    const AVCodecParameters *par = s->streams[0]->codecpar;

    if (par->extradata_size) {
        FUNC1(s->pb, par->extradata, par->extradata_size - 1);
        FUNC0(s->pb);
    }
    return 0;
}