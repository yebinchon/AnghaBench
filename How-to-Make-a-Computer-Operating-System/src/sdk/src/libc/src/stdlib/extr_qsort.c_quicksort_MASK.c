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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int,int) ; 

__attribute__((used)) static void FUNC1(char* base,size_t size,ssize_t l,ssize_t r,
          int (*compar)(const void*,const void*)) {
  ssize_t i=l-1, j=r, p=l-1, q=r, k;
  char* v=base+r*size;
  if (r<=l) return;
  for (;;) {
    while (++i != r && compar(base+i*size,v)<0) ;
    while (compar(v,base+(--j)*size)<0) if (j == l) break;
    if (i >= j) break;
    FUNC0(base,size,i,j);
    if (compar(base+i*size,v)==0) FUNC0(base,size,++p,i);
    if (compar(v,base+j*size)==0) FUNC0(base,size,j,--q);
  }
  FUNC0(base,size,i,r); j = i-1; ++i;
  for (k=l; k<p; k++, j--) FUNC0(base,size,k,j);
  for (k=r-1; k>q; k--, i++) FUNC0(base,size,i,k);
  FUNC1(base,size,l,j,compar);
  FUNC1(base,size,i,r,compar);
}