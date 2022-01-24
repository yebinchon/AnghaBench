#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int LUV ; 
 int UCS ; 
 int XYY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double** spectral_chromaticity ; 
 int /*<<< orphan*/  FUNC1 (double const,double const,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (double const,double const,double*,double*) ; 

__attribute__((used)) static void
FUNC3(double waveLength, int w, int h,
                          int cie, int *xP, int *yP)
{
    const int ix = waveLength - 360;
    const double pX = spectral_chromaticity[ix][0];
    const double pY = spectral_chromaticity[ix][1];
    const double pZ = spectral_chromaticity[ix][2];
    const double px = pX / (pX + pY + pZ);
    const double py = pY / (pX + pY + pZ);

    if (cie == LUV) {
        double up, vp;

        FUNC1(px, py, &up, &vp);
        *xP = up * (w - 1);
        *yP = (h - 1) - vp * (h - 1);
    } else if (cie == UCS) {
        double u, v;

        FUNC2(px, py, &u, &v);
        *xP = u * (w - 1);
        *yP = (h - 1) - v * (h - 1);
    } else if (cie == XYY) {
        *xP = px * (w - 1);
        *yP = (h - 1) - py * (h - 1);
    } else {
        FUNC0(0);
    }
}