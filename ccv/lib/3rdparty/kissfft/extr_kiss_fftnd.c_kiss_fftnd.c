
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* kiss_fftnd_cfg ;
typedef int const kiss_fft_cpx ;
struct TYPE_3__ {int ndims; int dimprod; int* dims; int const* tmpbuf; int * states; } ;


 int kiss_fft_stride (int ,int const*,int const*,int) ;
 int memcpy (int const*,int const*,int) ;

void kiss_fftnd(kiss_fftnd_cfg st,const kiss_fft_cpx *fin,kiss_fft_cpx *fout)
{
    int i,k;
    const kiss_fft_cpx * bufin=fin;
    kiss_fft_cpx * bufout;


    if ( st->ndims & 1 ) {
        bufout = fout;
        if (fin==fout) {
            memcpy( st->tmpbuf, fin, sizeof(kiss_fft_cpx) * st->dimprod );
            bufin = st->tmpbuf;
        }
    }else
        bufout = st->tmpbuf;

    for ( k=0; k < st->ndims; ++k) {
        int curdim = st->dims[k];
        int stride = st->dimprod / curdim;

        for ( i=0 ; i<stride ; ++i )
            kiss_fft_stride( st->states[k], bufin+i , bufout+i*curdim, stride );


        if (bufout == st->tmpbuf){
            bufout = fout;
            bufin = st->tmpbuf;
        }else{
            bufout = st->tmpbuf;
            bufin = fout;
        }
    }
}
