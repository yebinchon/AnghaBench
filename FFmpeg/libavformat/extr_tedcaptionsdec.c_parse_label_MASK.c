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
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,char) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, int *cur_byte, AVBPrint *bp)
{
    int ret;

    ret = FUNC1(pb, cur_byte, bp, 0);
    if (ret < 0)
        return ret;
    ret = FUNC0(pb, cur_byte, ':');
    if (ret < 0)
        return ret;
    return 0;
}