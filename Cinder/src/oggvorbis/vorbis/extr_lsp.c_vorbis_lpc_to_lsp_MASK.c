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
 scalar_t__ FUNC0 (float*,int,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,float*) ; 
 float FUNC2 (float) ; 
 float* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int) ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC5 (float*,int,int,int /*<<< orphan*/ ) ; 

int FUNC6(float *lpc,float *lsp,int m){
  int order2=(m+1)>>1;
  int g1_order,g2_order;
  float *g1=FUNC3(sizeof(*g1)*(order2+1));
  float *g2=FUNC3(sizeof(*g2)*(order2+1));
  float *g1r=FUNC3(sizeof(*g1r)*(order2+1));
  float *g2r=FUNC3(sizeof(*g2r)*(order2+1));
  int i;

  /* even and odd are slightly different base cases */
  g1_order=(m+1)>>1;
  g2_order=(m)  >>1;

  /* Compute the lengths of the x polynomials. */
  /* Compute the first half of K & R F1 & F2 polynomials. */
  /* Compute half of the symmetric and antisymmetric polynomials. */
  /* Remove the roots at +1 and -1. */

  g1[g1_order] = 1.f;
  for(i=1;i<=g1_order;i++) g1[g1_order-i] = lpc[i-1]+lpc[m-i];
  g2[g2_order] = 1.f;
  for(i=1;i<=g2_order;i++) g2[g2_order-i] = lpc[i-1]-lpc[m-i];

  if(g1_order>g2_order){
    for(i=2; i<=g2_order;i++) g2[g2_order-i] += g2[g2_order-i+2];
  }else{
    for(i=1; i<=g1_order;i++) g1[g1_order-i] -= g1[g1_order-i+1];
    for(i=1; i<=g2_order;i++) g2[g2_order-i] += g2[g2_order-i+1];
  }

  /* Convert into polynomials in cos(alpha) */
  FUNC4(g1,g1_order);
  FUNC4(g2,g2_order);

  /* Find the roots of the 2 even polynomials.*/
  if(FUNC0(g1,g1_order,g1r) ||
     FUNC0(g2,g2_order,g2r))
    return(-1);

  FUNC1(g1,g1_order,g1r); /* if it fails, it leaves g1r alone */
  FUNC1(g2,g2_order,g2r); /* if it fails, it leaves g2r alone */

  FUNC5(g1r,g1_order,sizeof(*g1r),comp);
  FUNC5(g2r,g2_order,sizeof(*g2r),comp);

  for(i=0;i<g1_order;i++)
    lsp[i*2] = FUNC2(g1r[i]);

  for(i=0;i<g2_order;i++)
    lsp[i*2+1] = FUNC2(g2r[i]);
  return(0);
}