#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  umid; int /*<<< orphan*/  instance_number; } ;
typedef  TYPE_1__ MXFContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  umid_ul ; 

__attribute__((used)) static void FUNC3(AVFormatContext *s, int type)
{
    MXFContext *mxf = s->priv_data;
    FUNC2(s->pb, umid_ul, 13);
    FUNC1(s->pb, mxf->instance_number);
    FUNC2(s->pb, mxf->umid, 15);
    FUNC0(s->pb, type);
}