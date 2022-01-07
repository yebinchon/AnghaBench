
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct kiss_fftndr_state {int dummy; } ;
typedef TYPE_1__* kiss_fftndr_cfg ;
typedef int kiss_fft_scalar ;
struct TYPE_5__ {int dimReal; int dimOther; char* tmpbuf; scalar_t__ cfg_nd; scalar_t__ cfg_r; } ;


 int MAX (int,int) ;
 scalar_t__ kiss_fftnd_alloc (int const*,int,int,char*,size_t*) ;
 scalar_t__ kiss_fftr_alloc (int,int,TYPE_1__*,size_t*) ;
 scalar_t__ malloc (size_t) ;
 int memset (TYPE_1__*,int ,size_t) ;
 int prod (int const*,int) ;

kiss_fftndr_cfg kiss_fftndr_alloc(const int *dims,int ndims,int inverse_fft,void*mem,size_t*lenmem)
{
    kiss_fftndr_cfg st = ((void*)0);
    size_t nr=0 , nd=0,ntmp=0;
    int dimReal = dims[ndims-1];
    int dimOther = prod(dims,ndims-1);
    size_t memneeded;

    (void)kiss_fftr_alloc(dimReal,inverse_fft,((void*)0),&nr);
    (void)kiss_fftnd_alloc(dims,ndims-1,inverse_fft,((void*)0),&nd);
    ntmp =
        MAX( 2*dimOther , dimReal+2) * sizeof(kiss_fft_scalar)
        + dimOther*(dimReal+2) * sizeof(kiss_fft_scalar);

    memneeded = sizeof( struct kiss_fftndr_state ) + nr + nd + ntmp;

    if (lenmem==((void*)0)) {
        st = (kiss_fftndr_cfg) malloc(memneeded);
    }else{
        if (*lenmem >= memneeded)
            st = (kiss_fftndr_cfg)mem;
        *lenmem = memneeded;
    }
    if (st==((void*)0))
        return ((void*)0);
    memset( st , 0 , memneeded);

    st->dimReal = dimReal;
    st->dimOther = dimOther;
    st->cfg_r = kiss_fftr_alloc( dimReal,inverse_fft,st+1,&nr);
    st->cfg_nd = kiss_fftnd_alloc(dims,ndims-1,inverse_fft, ((char*) st->cfg_r)+nr,&nd);
    st->tmpbuf = (char*)st->cfg_nd + nd;

    return st;
}
