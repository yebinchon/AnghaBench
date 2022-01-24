#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int reference; } ;
struct TYPE_8__ {int pic_id; } ;
typedef  TYPE_1__ H264Ref ;
typedef  TYPE_2__ H264Picture ;

/* Variables and functions */
 int PICT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(H264Ref *dest, H264Picture *src, int parity, int id_add)
{
    int match = !!(src->reference & parity);

    if (match) {
        FUNC1(dest, src);
        if (parity != PICT_FRAME) {
            FUNC0(dest, parity);
            dest->pic_id *= 2;
            dest->pic_id += id_add;
        }
    }

    return match;
}