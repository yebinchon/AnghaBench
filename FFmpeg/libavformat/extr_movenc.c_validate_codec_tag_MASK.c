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
struct TYPE_3__ {int id; unsigned int tag; } ;
typedef  TYPE_1__ AVCodecTag ;

/* Variables and functions */
 int AV_CODEC_ID_NONE ; 
 scalar_t__ FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(const AVCodecTag *const *tags,
                                       unsigned int tag, int codec_id)
{
    int i;

    /**
     * Check that tag + id is in the table
     */
    for (i = 0; tags && tags[i]; i++) {
        const AVCodecTag *codec_tags = tags[i];
        while (codec_tags->id != AV_CODEC_ID_NONE) {
            if (FUNC0(codec_tags->tag) == FUNC0(tag) &&
                codec_tags->id == codec_id)
                return codec_tags->tag;
            codec_tags++;
        }
    }
    return 0;
}