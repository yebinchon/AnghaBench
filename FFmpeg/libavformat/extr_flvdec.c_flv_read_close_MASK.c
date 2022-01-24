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
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  keyframe_filepositions; int /*<<< orphan*/  keyframe_times; int /*<<< orphan*/ * new_extradata; } ;
typedef  TYPE_1__ FLVContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FLV_STREAM_TYPE_NB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(AVFormatContext *s)
{
    int i;
    FLVContext *flv = s->priv_data;
    for (i=0; i<FLV_STREAM_TYPE_NB; i++)
        FUNC0(&flv->new_extradata[i]);
    FUNC0(&flv->keyframe_times);
    FUNC0(&flv->keyframe_filepositions);
    return 0;
}