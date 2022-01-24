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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,double,double,double,double,...) ; 
 double FUNC1 (int,int) ; 
 double FUNC2 (double,int) ; 

__attribute__((used)) static void FUNC3(uint64_t ssd[3], double ssim[3], int frames, int w, int h)
{
    FUNC0( "PSNR Y:%.3f  U:%.3f  V:%.3f  All:%.3f | ",
            FUNC1( ssd[0], (uint64_t)frames*w*h ),
            FUNC1( ssd[1], (uint64_t)frames*w*h/4 ),
            FUNC1( ssd[2], (uint64_t)frames*w*h/4 ),
            FUNC1( ssd[0] + ssd[1] + ssd[2], (uint64_t)frames*w*h*3/2 ) );
    FUNC0( "SSIM Y:%.5f U:%.5f V:%.5f All:%.5f (%.5f)",
            ssim[0] / frames,
            ssim[1] / frames,
            ssim[2] / frames,
            (ssim[0]*4 + ssim[1] + ssim[2]) / (frames*6),
            FUNC2(ssim[0] * 4 + ssim[1] + ssim[2], frames*6));
}