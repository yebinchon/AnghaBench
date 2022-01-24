#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct GPU_FFT_TRANS {int dummy; } ;
struct GPU_FFT_COMPLEX {int re; int im; } ;
struct GPU_FFT {int dummy; } ;
typedef  int /*<<< orphan*/  bih ;
typedef  int /*<<< orphan*/  bfh ;
struct TYPE_5__ {int bfType; int bfSize; int bfOffBits; int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BITMAPINFOHEADER ;
typedef  TYPE_1__ BITMAPFILEHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  GPU_FFT_REV ; 
 struct GPU_FFT_COMPLEX* FUNC0 (struct GPU_FFT*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 () ; 
 int N ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct GPU_FFT*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct GPU_FFT**) ; 
 int /*<<< orphan*/  FUNC7 (struct GPU_FFT*) ; 
 int /*<<< orphan*/  FUNC8 (struct GPU_FFT_TRANS*) ; 
 int FUNC9 (int,struct GPU_FFT*,struct GPU_FFT*,struct GPU_FFT_TRANS**) ; 
 int /*<<< orphan*/  FUNC10 (struct GPU_FFT_TRANS*) ; 
 int /*<<< orphan*/  in ; 
 int /*<<< orphan*/  log2_N ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(int argc, char *argv[]) {
    int x, y, ret, mb = FUNC11();
    unsigned t[4];

    struct GPU_FFT_COMPLEX *row;
    struct GPU_FFT_TRANS *trans;
    struct GPU_FFT *fft_pass[2];

    BITMAPFILEHEADER bfh;
    BITMAPINFOHEADER bih;

    // Create Windows bitmap file
    FILE *fp = FUNC2("hello_fft_2d.bmp", "wb");
    if (!fp) return -666;

    // Write bitmap header
    FUNC12(&bfh, 0, sizeof(bfh));
    bfh.bfType = 0x4D42; //"BM"
    bfh.bfSize = N*N*3;
    bfh.bfOffBits = sizeof(bfh) + sizeof(bih);
    FUNC4(&bfh, sizeof(bfh), 1, fp);

    // Write bitmap info
    FUNC12(&bih, 0, sizeof(bih));
    bih.biSize = sizeof(bih);
    bih.biWidth = N;
    bih.biHeight = N;
    bih.biPlanes = 1;
    bih.biBitCount = 24;
    bih.biCompression = BI_RGB;
    FUNC4(&bih, sizeof(bih), 1, fp);

    // Prepare 1st FFT pass
    ret = FUNC6(mb, log2_N, GPU_FFT_REV, N, fft_pass+0);
    if (ret) {
        return ret;
    }
    // Prepare 2nd FFT pass
    ret = FUNC6(mb, log2_N, GPU_FFT_REV, N, fft_pass+1);
    if (ret) {
        FUNC7(fft_pass[0]);
        return ret;
    }
    // Transpose from 1st pass output to 2nd pass input
    ret = FUNC9(mb, fft_pass[0], fft_pass[1], &trans);
    if (ret) {
        FUNC7(fft_pass[0]);
        FUNC7(fft_pass[1]);
        return ret;
    }

    // Clear input array
    for (y=0; y<N; y++) {
        row = FUNC0(fft_pass[0], in, y);
        for (x=0; x<N; x++) row[x].re = row[x].im = 0;
    }

    // Setup input data
    FUNC0(fft_pass[0], in,   2)[  2].re = 60;
    FUNC0(fft_pass[0], in, N-2)[N-2].re = 60;

    // ==> FFT() ==> T() ==> FFT() ==>
    FUNC14(1); /* yield to OS */   t[0] = FUNC1();
    FUNC5(fft_pass[0]);  t[1] = FUNC1();
    FUNC8(trans);  t[2] = FUNC1();
    FUNC5(fft_pass[1]);  t[3] = FUNC1();

    // Write output to bmp file
    for (y=0; y<N; y++) {
        row = FUNC0(fft_pass[1], out, y);
        for (x=0; x<N; x++) {
            FUNC3(128+row[x].re, fp); // blue
            FUNC3(128+row[x].re, fp); // green
            FUNC3(128+row[x].re, fp); // red
        }
    }

    FUNC13( "1st FFT   %6d usecs\n"
            "Transpose %6d usecs\n"
            "2nd FFT   %6d usecs\n",
            t[3]-t[2], t[2]-t[1], t[1]-t[0]);

    // Clean-up properly.  Videocore memory lost if not freed !
    FUNC7(fft_pass[0]);
    FUNC7(fft_pass[1]);
    FUNC10(trans);

    return 0;
}