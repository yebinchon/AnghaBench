#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ r; scalar_t__ i; } ;
typedef  TYPE_1__ kissf_fft_cpx ;
typedef  TYPE_2__* kissf_fft_cfg ;
struct TYPE_18__ {scalar_t__ inverse; TYPE_1__* twiddles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC5(
        kissf_fft_cpx * Fout,
        const size_t fstride,
        const kissf_fft_cfg st,
        const size_t m
        )
{
    kissf_fft_cpx *tw1,*tw2,*tw3;
    kissf_fft_cpx scratch[6];
    size_t k=m;
    const size_t m2=2*m;
    const size_t m3=3*m;


    tw3 = tw2 = tw1 = st->twiddles;

    do {
        FUNC2(*Fout,4); FUNC2(Fout[m],4); FUNC2(Fout[m2],4); FUNC2(Fout[m3],4);

        FUNC3(scratch[0],Fout[m] , *tw1 );
        FUNC3(scratch[1],Fout[m2] , *tw2 );
        FUNC3(scratch[2],Fout[m3] , *tw3 );

        FUNC4( scratch[5] , *Fout, scratch[1] );
        FUNC1(*Fout, scratch[1]);
        FUNC0( scratch[3] , scratch[0] , scratch[2] );
        FUNC4( scratch[4] , scratch[0] , scratch[2] );
        FUNC4( Fout[m2], *Fout, scratch[3] );
        tw1 += fstride;
        tw2 += fstride*2;
        tw3 += fstride*3;
        FUNC1( *Fout , scratch[3] );

        if(st->inverse) {
            Fout[m].r = scratch[5].r - scratch[4].i;
            Fout[m].i = scratch[5].i + scratch[4].r;
            Fout[m3].r = scratch[5].r + scratch[4].i;
            Fout[m3].i = scratch[5].i - scratch[4].r;
        }else{
            Fout[m].r = scratch[5].r + scratch[4].i;
            Fout[m].i = scratch[5].i - scratch[4].r;
            Fout[m3].r = scratch[5].r - scratch[4].i;
            Fout[m3].i = scratch[5].i + scratch[4].r;
        }
        ++Fout;
    }while(--k);
}