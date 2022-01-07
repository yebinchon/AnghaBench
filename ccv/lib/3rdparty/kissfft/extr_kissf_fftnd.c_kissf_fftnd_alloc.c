
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kissf_fftnd_state {int dummy; } ;
typedef TYPE_1__* kissf_fftnd_cfg ;
typedef int kissf_fft_cpx ;
typedef int kissf_fft_cfg ;
struct TYPE_3__ {int dimprod; int ndims; int* dims; int * states; int * tmpbuf; } ;


 int fprintf (int ,char*) ;
 int kissf_fft_alloc (int const,int,char*,size_t*) ;
 scalar_t__ malloc (size_t) ;
 int stderr ;

kissf_fftnd_cfg kissf_fftnd_alloc(const int *dims,int ndims,int inverse_fft,void*mem,size_t*lenmem)
{
    kissf_fftnd_cfg st = ((void*)0);
    int i;
    int dimprod=1;
    size_t memneeded = sizeof(struct kissf_fftnd_state);
    char * ptr;

    for (i=0;i<ndims;++i) {
        size_t sublen=0;
        kissf_fft_alloc (dims[i], inverse_fft, ((void*)0), &sublen);
        memneeded += sublen;
        dimprod *= dims[i];
    }
    memneeded += sizeof(int) * ndims;
    memneeded += sizeof(void*) * ndims;
    memneeded += sizeof(kissf_fft_cpx) * dimprod;

    if (lenmem == ((void*)0)) {
        st = (kissf_fftnd_cfg) malloc (memneeded);
    } else {
        if (*lenmem >= memneeded)
            st = (kissf_fftnd_cfg) mem;
        *lenmem = memneeded;
    }
    if (!st)
        return ((void*)0);

    st->dimprod = dimprod;
    st->ndims = ndims;
    ptr=(char*)(st+1);

    st->states = (kissf_fft_cfg *)ptr;
    ptr += sizeof(void*) * ndims;

    st->dims = (int*)ptr;
    ptr += sizeof(int) * ndims;

    st->tmpbuf = (kissf_fft_cpx*)ptr;
    ptr += sizeof(kissf_fft_cpx) * dimprod;

    for (i=0;i<ndims;++i) {
        size_t len;
        st->dims[i] = dims[i];
        kissf_fft_alloc (st->dims[i], inverse_fft, ((void*)0), &len);
        st->states[i] = kissf_fft_alloc (st->dims[i], inverse_fft, ptr,&len);
        ptr += len;
    }
    if ( ptr - (char*)st != (int)memneeded ) {
        fprintf(stderr,
                "################################################################################\n"
                "Internal error! Memory allocation miscalculation\n"
                "################################################################################\n"
               );
    }
    return st;
}
