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
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_YUV410P ; 
 int /*<<< orphan*/  default_setup_lru ; 
 int /*<<< orphan*/  dx2_decode_slice_410 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(AVCodecContext *avctx, AVFrame *pic,
                                const uint8_t *src, int src_size)
{
    return FUNC0(avctx, pic, src, src_size,
                            dx2_decode_slice_410,
                            default_setup_lru,
                            AV_PIX_FMT_YUV410P);
}