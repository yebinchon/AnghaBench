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
struct kissf_fftndr_state {int dummy; } ;
typedef  TYPE_1__* kissf_fftndr_cfg ;
typedef  int /*<<< orphan*/  kissf_fft_scalar ;
struct TYPE_5__ {int dimReal; int dimOther; char* tmpbuf; scalar_t__ cfg_nd; scalar_t__ cfg_r; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int const*,int,int,char*,size_t*) ; 
 scalar_t__ FUNC2 (int,int,TYPE_1__*,size_t*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int const*,int) ; 

kissf_fftndr_cfg FUNC6(const int *dims,int ndims,int inverse_fft,void*mem,size_t*lenmem)
{
    kissf_fftndr_cfg st = NULL;
    size_t nr=0 , nd=0,ntmp=0;
    int dimReal = dims[ndims-1];
    int dimOther = FUNC5(dims,ndims-1);
    size_t memneeded;
    
    (void)FUNC2(dimReal,inverse_fft,NULL,&nr);
    (void)FUNC1(dims,ndims-1,inverse_fft,NULL,&nd);
    ntmp =
        FUNC0( 2*dimOther , dimReal+2) * sizeof(kissf_fft_scalar)  // freq buffer for one pass
        + dimOther*(dimReal+2) * sizeof(kissf_fft_scalar);  // large enough to hold entire input in case of in-place

    memneeded = sizeof( struct kissf_fftndr_state ) + nr + nd + ntmp;

    if (lenmem==NULL) {
        st = (kissf_fftndr_cfg) FUNC3(memneeded);
    }else{
        if (*lenmem >= memneeded)
            st = (kissf_fftndr_cfg)mem;
        *lenmem = memneeded; 
    }
    if (st==NULL)
        return NULL;
    FUNC4( st , 0 , memneeded);
    
    st->dimReal = dimReal;
    st->dimOther = dimOther;
    st->cfg_r = FUNC2( dimReal,inverse_fft,st+1,&nr);
    st->cfg_nd = FUNC1(dims,ndims-1,inverse_fft, ((char*) st->cfg_r)+nr,&nd);
    st->tmpbuf = (char*)st->cfg_nd + nd;

    return st;
}