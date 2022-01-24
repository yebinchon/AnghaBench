#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {scalar_t__ id; unsigned int tag; } ;
typedef  TYPE_1__ AVCodecTag ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_NONE ; 
 scalar_t__ FUNC0 (unsigned int) ; 

enum AVCodecID FUNC1(const AVCodecTag *tags, unsigned int tag)
{
    int i;
    for (i = 0; tags[i].id != AV_CODEC_ID_NONE; i++)
        if (tag == tags[i].tag)
            return tags[i].id;
    for (i = 0; tags[i].id != AV_CODEC_ID_NONE; i++)
        if (FUNC0(tag) == FUNC0(tags[i].tag))
            return tags[i].id;
    return AV_CODEC_ID_NONE;
}