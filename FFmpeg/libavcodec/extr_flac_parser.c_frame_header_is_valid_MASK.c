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
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  FLACFrameInfo ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int MAX_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, const uint8_t *buf,
                                 FLACFrameInfo *fi)
{
    GetBitContext gb;
    FUNC1(&gb, buf, MAX_FRAME_HEADER_SIZE * 8);
    return !FUNC0(avctx, &gb, fi, 127);
}