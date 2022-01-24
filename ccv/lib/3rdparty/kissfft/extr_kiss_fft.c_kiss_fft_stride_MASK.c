#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const kiss_fft_cpx ;
typedef  TYPE_1__* kiss_fft_cfg ;
struct TYPE_4__ {int nfft; int /*<<< orphan*/  factors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

void FUNC4(kiss_fft_cfg st,const kiss_fft_cpx *fin,kiss_fft_cpx *fout,int in_stride)
{
    if (fin == fout) {
        //NOTE: this is not really an in-place FFT algorithm.
        //It just performs an out-of-place FFT into a temp buffer
        kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)FUNC0( sizeof(kiss_fft_cpx)*st->nfft);
        FUNC2(tmpbuf,fin,1,in_stride, st->factors,st);
        FUNC3(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
        FUNC1(tmpbuf);
    }else{
        FUNC2( fout, fin, 1,in_stride, st->factors,st );
    }
}