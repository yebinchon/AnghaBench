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
struct TYPE_3__ {int log2n; int n; int* bitrev; void* scale; void** trig; } ;
typedef  TYPE_1__ mdct_lookup ;
typedef  void* DATA_TYPE ;

/* Variables and functions */
 void* FUNC0 (float) ; 
 int M_PI ; 
 void* FUNC1 (int) ; 
 double FUNC2 (int) ; 
 int FUNC3 (float) ; 
 int FUNC4 (int) ; 
 double FUNC5 (int) ; 

void FUNC6(mdct_lookup *lookup,int n){
  int   *bitrev=FUNC1(sizeof(*bitrev)*(n/4));
  DATA_TYPE *T=FUNC1(sizeof(*T)*(n+n/4));

  int i;
  int n2=n>>1;
  int log2n=lookup->log2n=FUNC4(FUNC3((float)n)/FUNC3(2.f));
  lookup->n=n;
  lookup->trig=T;
  lookup->bitrev=bitrev;

/* trig lookups... */

  for(i=0;i<n/4;i++){
    T[i*2]=FUNC0(FUNC2((M_PI/n)*(4*i)));
    T[i*2+1]=FUNC0(-FUNC5((M_PI/n)*(4*i)));
    T[n2+i*2]=FUNC0(FUNC2((M_PI/(2*n))*(2*i+1)));
    T[n2+i*2+1]=FUNC0(FUNC5((M_PI/(2*n))*(2*i+1)));
  }
  for(i=0;i<n/8;i++){
    T[n+i*2]=FUNC0(FUNC2((M_PI/n)*(4*i+2))*.5);
    T[n+i*2+1]=FUNC0(-FUNC5((M_PI/n)*(4*i+2))*.5);
  }

  /* bitreverse lookup... */

  {
    int mask=(1<<(log2n-1))-1,i,j;
    int msb=1<<(log2n-2);
    for(i=0;i<n/8;i++){
      int acc=0;
      for(j=0;msb>>j;j++)
        if((msb>>j)&i)acc|=1<<j;
      bitrev[i*2]=((~acc)&mask)-1;
      bitrev[i*2+1]=acc;

    }
  }
  lookup->scale=FUNC0(4.f/n);
}