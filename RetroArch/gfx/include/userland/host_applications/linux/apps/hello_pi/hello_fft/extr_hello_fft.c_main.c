
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT_COMPLEX {double re; double im; } ;
struct GPU_FFT {int step; struct GPU_FFT_COMPLEX* out; struct GPU_FFT_COMPLEX* in; } ;


 int GPU_FFT_PI ;
 int GPU_FFT_REV ;
 unsigned int Microseconds () ;
 char* Usage ;
 int atoi (char*) ;
 double cos (int) ;
 int gpu_fft_execute (struct GPU_FFT*) ;
 int gpu_fft_prepare (int,int,int ,int,struct GPU_FFT**) ;
 int gpu_fft_release (struct GPU_FFT*) ;
 int mbox_open () ;
 scalar_t__ pow (double,int) ;
 int printf (char*,...) ;
 double sqrt (double) ;
 int usleep (int) ;

int main(int argc, char *argv[]) {
    int i, j, k, ret, loops, freq, log2_N, jobs, N, mb = mbox_open();
    unsigned t[2];
    double tsq[2];

    struct GPU_FFT_COMPLEX *base;
    struct GPU_FFT *fft;

    log2_N = argc>1? atoi(argv[1]) : 12;
    jobs = argc>2? atoi(argv[2]) : 1;
    loops = argc>3? atoi(argv[3]) : 1;

    if (argc<2 || jobs<1 || loops<1) {
        printf(Usage);
        return -1;
    }

    N = 1<<log2_N;
    ret = gpu_fft_prepare(mb, log2_N, GPU_FFT_REV, jobs, &fft);

    switch(ret) {
        case -1: printf("Unable to enable V3D. Please check your firmware is up to date.\n"); return -1;
        case -2: printf("log2_N=%d not supported.  Try between 8 and 22.\n", log2_N); return -1;
        case -3: printf("Out of memory.  Try a smaller batch or increase GPU memory.\n"); return -1;
        case -4: printf("Unable to map Videocore peripherals into ARM memory space.\n"); return -1;
        case -5: printf("Can't open libbcm_host.\n"); return -1;
    }

    for (k=0; k<loops; k++) {

        for (j=0; j<jobs; j++) {
            base = fft->in + j*fft->step;
            for (i=0; i<N; i++) base[i].re = base[i].im = 0;
            freq = j+1;
            base[freq].re = base[N-freq].re = 0.5;
        }

        usleep(1);
        t[0] = Microseconds();
        gpu_fft_execute(fft);
        t[1] = Microseconds();

        tsq[0]=tsq[1]=0;
        for (j=0; j<jobs; j++) {
            base = fft->out + j*fft->step;
            freq = j+1;
            for (i=0; i<N; i++) {
                double re = cos(2*GPU_FFT_PI*freq*i/N);
                tsq[0] += pow(re, 2);
                tsq[1] += pow(re - base[i].re, 2) + pow(base[i].im, 2);
            }
        }

        printf("rel_rms_err = %0.2g, usecs = %d, k = %d\n",
            sqrt(tsq[1]/tsq[0]), (t[1]-t[0])/jobs, k);
    }

    gpu_fft_release(fft);
    return 0;
}
