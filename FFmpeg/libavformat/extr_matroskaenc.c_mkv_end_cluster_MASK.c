#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int cluster_pos; int /*<<< orphan*/  cluster_bc; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;

    FUNC1(s->pb, &mkv->cluster_bc, mkv);
    mkv->cluster_pos = -1;
    FUNC0(s->pb);
}