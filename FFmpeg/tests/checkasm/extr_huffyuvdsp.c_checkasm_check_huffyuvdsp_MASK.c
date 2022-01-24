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
typedef  int /*<<< orphan*/  HuffYUVDSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_YUV422P ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
    HuffYUVDSPContext c;
    int width = 16 * FUNC0(FUNC4(), 16, 128);

    FUNC2(&c, AV_PIX_FMT_YUV422P);

    /*! test width not multiple of mmsize */
    FUNC1(c, 65535, width, "add_int16_rnd_width");
    FUNC3("add_int16_rnd_width");

    /*! test always with the same size (for perf test) */
    FUNC1(c, 65535, 16*128, "add_int16_128");
    FUNC3("add_int16_128");
}