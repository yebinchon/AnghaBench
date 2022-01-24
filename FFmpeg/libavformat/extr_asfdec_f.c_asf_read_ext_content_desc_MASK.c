#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {TYPE_1__* dar; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; TYPE_3__* priv_data; } ;
struct TYPE_6__ {void* den; void* num; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,int,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int desc_count, i, ret;

    desc_count = FUNC1(pb);
    for (i = 0; i < desc_count; i++) {
        int name_len, value_type, value_len;
        char name[1024];

        name_len = FUNC1(pb);
        if (name_len % 2)   // must be even, broken lavf versions wrote len-1
            name_len += 1;
        if ((ret = FUNC0(pb, name_len, name, sizeof(name))) < name_len)
            FUNC2(pb, name_len - ret);
        value_type = FUNC1(pb);
        value_len  = FUNC1(pb);
        if (!value_type && value_len % 2)
            value_len += 1;
        /* My sample has that stream set to 0 maybe that mean the container.
         * ASF stream count starts at 1. I am using 0 to the container value
         * since it's unused. */
        if (!FUNC5(name, "AspectRatioX"))
            asf->dar[0].num = FUNC4(s->pb, value_type, 32);
        else if (!FUNC5(name, "AspectRatioY"))
            asf->dar[0].den = FUNC4(s->pb, value_type, 32);
        else
            FUNC3(s, name, value_type, value_len, 32);
    }

    return 0;
}