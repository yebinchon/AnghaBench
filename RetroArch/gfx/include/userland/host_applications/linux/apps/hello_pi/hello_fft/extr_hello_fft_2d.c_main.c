
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct GPU_FFT_TRANS {int dummy; } ;
struct GPU_FFT_COMPLEX {int re; int im; } ;
struct GPU_FFT {int dummy; } ;
typedef int bih ;
typedef int bfh ;
struct TYPE_5__ {int bfType; int bfSize; int bfOffBits; int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
typedef int FILE ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef TYPE_1__ BITMAPFILEHEADER ;


 int BI_RGB ;
 int GPU_FFT_REV ;
 struct GPU_FFT_COMPLEX* GPU_FFT_ROW (struct GPU_FFT*,int ,int) ;
 unsigned int Microseconds () ;
 int N ;
 int * fopen (char*,char*) ;
 int fputc (int,int *) ;
 int fwrite (TYPE_1__*,int,int,int *) ;
 int gpu_fft_execute (struct GPU_FFT*) ;
 int gpu_fft_prepare (int,int ,int ,int,struct GPU_FFT**) ;
 int gpu_fft_release (struct GPU_FFT*) ;
 int gpu_fft_trans_execute (struct GPU_FFT_TRANS*) ;
 int gpu_fft_trans_prepare (int,struct GPU_FFT*,struct GPU_FFT*,struct GPU_FFT_TRANS**) ;
 int gpu_fft_trans_release (struct GPU_FFT_TRANS*) ;
 int in ;
 int log2_N ;
 int mbox_open () ;
 int memset (TYPE_1__*,int ,int) ;
 int out ;
 int printf (char*,unsigned int,unsigned int,unsigned int) ;
 int usleep (int) ;

int main(int argc, char *argv[]) {
    int x, y, ret, mb = mbox_open();
    unsigned t[4];

    struct GPU_FFT_COMPLEX *row;
    struct GPU_FFT_TRANS *trans;
    struct GPU_FFT *fft_pass[2];

    BITMAPFILEHEADER bfh;
    BITMAPINFOHEADER bih;


    FILE *fp = fopen("hello_fft_2d.bmp", "wb");
    if (!fp) return -666;


    memset(&bfh, 0, sizeof(bfh));
    bfh.bfType = 0x4D42;
    bfh.bfSize = N*N*3;
    bfh.bfOffBits = sizeof(bfh) + sizeof(bih);
    fwrite(&bfh, sizeof(bfh), 1, fp);


    memset(&bih, 0, sizeof(bih));
    bih.biSize = sizeof(bih);
    bih.biWidth = N;
    bih.biHeight = N;
    bih.biPlanes = 1;
    bih.biBitCount = 24;
    bih.biCompression = BI_RGB;
    fwrite(&bih, sizeof(bih), 1, fp);


    ret = gpu_fft_prepare(mb, log2_N, GPU_FFT_REV, N, fft_pass+0);
    if (ret) {
        return ret;
    }

    ret = gpu_fft_prepare(mb, log2_N, GPU_FFT_REV, N, fft_pass+1);
    if (ret) {
        gpu_fft_release(fft_pass[0]);
        return ret;
    }

    ret = gpu_fft_trans_prepare(mb, fft_pass[0], fft_pass[1], &trans);
    if (ret) {
        gpu_fft_release(fft_pass[0]);
        gpu_fft_release(fft_pass[1]);
        return ret;
    }


    for (y=0; y<N; y++) {
        row = GPU_FFT_ROW(fft_pass[0], in, y);
        for (x=0; x<N; x++) row[x].re = row[x].im = 0;
    }


    GPU_FFT_ROW(fft_pass[0], in, 2)[ 2].re = 60;
    GPU_FFT_ROW(fft_pass[0], in, N-2)[N-2].re = 60;


    usleep(1); t[0] = Microseconds();
    gpu_fft_execute(fft_pass[0]); t[1] = Microseconds();
    gpu_fft_trans_execute(trans); t[2] = Microseconds();
    gpu_fft_execute(fft_pass[1]); t[3] = Microseconds();


    for (y=0; y<N; y++) {
        row = GPU_FFT_ROW(fft_pass[1], out, y);
        for (x=0; x<N; x++) {
            fputc(128+row[x].re, fp);
            fputc(128+row[x].re, fp);
            fputc(128+row[x].re, fp);
        }
    }

    printf( "1st FFT   %6d usecs\n"
            "Transpose %6d usecs\n"
            "2nd FFT   %6d usecs\n",
            t[3]-t[2], t[2]-t[1], t[1]-t[0]);


    gpu_fft_release(fft_pass[0]);
    gpu_fft_release(fft_pass[1]);
    gpu_fft_trans_release(trans);

    return 0;
}
