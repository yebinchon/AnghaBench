#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct representation {scalar_t__ cur_seg_offset; int /*<<< orphan*/  input; scalar_t__ cur_seg_size; } ;
struct fragment {scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct representation *pls, struct fragment *seg,
                         uint8_t *buf, int buf_size)
{
    int ret;

    /* limit read if the fragment was only a part of a file */
    if (seg->size >= 0)
        buf_size = FUNC0(buf_size, pls->cur_seg_size - pls->cur_seg_offset);

    ret = FUNC1(pls->input, buf, buf_size);
    if (ret > 0)
        pls->cur_seg_offset += ret;

    return ret;
}