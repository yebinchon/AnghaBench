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
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, AVFrame *dst, AVFrame *src,
                         int plane, int x, int y, int dx, int dy, int size, int bias)
{
    int ret;

    if (!bias) {
        ret = FUNC0(avctx, dst, src, plane, x, y, dx, dy, size);
    } else {
        ret = FUNC1(avctx, dst, src, plane, x, y, dx, dy, size, bias);
    }

    return ret;
}