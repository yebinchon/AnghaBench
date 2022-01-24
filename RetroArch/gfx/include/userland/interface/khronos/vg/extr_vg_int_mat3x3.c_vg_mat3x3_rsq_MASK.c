#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float** m; } ;
typedef  TYPE_1__ VG_MAT3X3_T ;

/* Variables and functions */
 scalar_t__ EPS ; 
 float FUNC0 (float,float) ; 
 scalar_t__ FUNC1 (float) ; 
 float FUNC2 (float,float) ; 
 float FUNC3 (float) ; 

void FUNC4(const VG_MAT3X3_T *a,
   float *r, float *s0, float *s1)
{
   /*
      a = R * S * Q (svd, R is rotation, S is scale, Q is rotation/flip)
      a^T = Q^T * S * R^T
      a * a^T = R * S * Q * Q^T * S * R^T = R * S^2 * R^T

      eigenvalues of a * a^T will give S^2
      eigenvectors of a * a^T will give R
   */

   /*
      ( b c ) = a * a^T
      ( d e )
   */

   float b = (a->m[0][0] * a->m[0][0]) + (a->m[0][1] * a->m[0][1]);
   float c = (a->m[0][0] * a->m[1][0]) + (a->m[0][1] * a->m[1][1]);
   /* d = c */
   float e = (a->m[1][0] * a->m[1][0]) + (a->m[1][1] * a->m[1][1]);

   float bpe = b + e;
   float bme = b - e;

   /*
      solve:

      bx + cy = sx
      dx + ey = sy

      cy * dx = (s - b)x * (s - e)y
      c^2 = (s - b) * (s - e)
      s^2 - (b + e)s + (be - c^2) = 0
      s = (b + e +/- sqrt((b + e)^2 - 4(be - c^2))) / 2
      s = (b + e +/- sqrt(b^2 + e^2 - 2be + 4c^2)) / 2
      s = (b + e +/- sqrt((b - e)^2 + 4c^2)) / 2
   */

   float t = FUNC3((bme * bme) + (4.0f * c * c));
   float v = (bpe + t) * 0.5f; /* first eigenvalue */
   if (s0) {
      *s0 = FUNC3(v);
   }
   if (s1) {
      *s1 = FUNC3(
         /* second eigenvalue */
         FUNC0(bpe - t, 0.0f) * 0.5f);
   }

   /*
      angle of eigenvector corresponds to r
   */

   if (r) {
      /* first eigenvector is (c, v - b) / (v - e, c) */
      float x = (v - e) + c;
      float y = (v - b) + c;
      *r = ((FUNC1(x) < EPS) && (FUNC1(y) < EPS)) ? 0.0f : FUNC2(y, x);
   }
}