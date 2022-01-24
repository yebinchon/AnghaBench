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
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static AVCodec *FUNC2(enum AVCodecID codec_id)
{
    AVCodec *res;

    res = FUNC0(codec_id);
    if (!res)
        FUNC1("Failed to find decoder");
    return res;
}