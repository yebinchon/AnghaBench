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
typedef  scalar_t__ uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,double*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (char*,char*,int*,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 double FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC12(int argc, char* argv[])
{
    FILE *f[2];
    uint8_t *buf[2], *plane[2][3];
    int *temp;
    uint64_t ssd[3] = {0,0,0};
    double ssim[3] = {0,0,0};
    int frame_size, w, h;
    int frames, seek;
    int i;

    if( argc<4 || 2 != FUNC9(argv[3], "%dx%d", &w, &h) )
    {
        FUNC8("tiny_ssim <file1.yuv> <file2.yuv> <width>x<height> [<seek>]\n");
        return -1;
    }

    f[0] = FUNC2(argv[1], "rb");
    f[1] = FUNC2(argv[2], "rb");
    FUNC9(argv[3], "%dx%d", &w, &h);

    if (w<=0 || h<=0 || w*(int64_t)h >= INT_MAX/3 || 2LL*w+12 >= INT_MAX / sizeof(*temp)) {
        FUNC3(stderr, "Dimensions are too large, or invalid\n");
        return -2;
    }

    frame_size = w*h*3LL/2;
    for( i=0; i<2; i++ )
    {
        buf[i] = FUNC6(frame_size);
        plane[i][0] = buf[i];
        plane[i][1] = plane[i][0] + w*h;
        plane[i][2] = plane[i][1] + w*h/4;
    }
    temp = FUNC6((2*w+12)*sizeof(*temp));
    seek = argc<5 ? 0 : FUNC0(argv[4]);
    FUNC5(f[seek<0], seek < 0 ? -seek : seek, SEEK_SET);

    for( frames=0;; frames++ )
    {
        uint64_t ssd_one[3];
        double ssim_one[3];
        if( FUNC4(buf[0], frame_size, 1, f[0]) != 1) break;
        if( FUNC4(buf[1], frame_size, 1, f[1]) != 1) break;
        for( i=0; i<3; i++ )
        {
            ssd_one[i]  = FUNC10 ( plane[0][i], plane[1][i], w*h>>2*!!i );
            ssim_one[i] = FUNC11( plane[0][i], w>>!!i,
                                     plane[1][i], w>>!!i,
                                     w>>!!i, h>>!!i, temp, NULL );
            ssd[i] += ssd_one[i];
            ssim[i] += ssim_one[i];
        }

        FUNC8("Frame %d | ", frames);
        FUNC7(ssd_one, ssim_one, 1, w, h);
        FUNC8("                \r");
        FUNC1(stdout);
    }

    if( !frames ) return 0;

    FUNC8("Total %d frames | ", frames);
    FUNC7(ssd, ssim, frames, w, h);
    FUNC8("\n");

    return 0;
}