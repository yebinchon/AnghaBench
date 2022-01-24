#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double re; double im; } ;
struct TYPE_5__ {void* im; void* re; } ;
typedef  TYPE_1__ FFTComplex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double,double,double,void*,void*) ; 
 void* FUNC1 (double,int) ; 
 TYPE_4__* exptab ; 

__attribute__((used)) static void FUNC2(FFTComplex *tabr, FFTComplex *tab, int nbits)
{
    int i, j;
    int n  = 1 << nbits;
    int n2 = n >> 1;

    for (i = 0; i < n; i++) {
        double tmp_re = 0, tmp_im = 0;
        FFTComplex *q = tab;
        for (j = 0; j < n; j++) {
            double s, c;
            int k = (i * j) & (n - 1);
            if (k >= n2) {
                c = -exptab[k - n2].re;
                s = -exptab[k - n2].im;
            } else {
                c = exptab[k].re;
                s = exptab[k].im;
            }
            FUNC0(tmp_re, tmp_im, c, s, q->re, q->im);
            q++;
        }
        tabr[i].re = FUNC1(tmp_re, nbits);
        tabr[i].im = FUNC1(tmp_im, nbits);
    }
}