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
struct TYPE_5__ {int n; int* trig; } ;
typedef  TYPE_1__ mdct_lookup ;
typedef  int DATA_TYPE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int) ; 

void FUNC3(mdct_lookup *init, DATA_TYPE *in, DATA_TYPE *out){
  int n=init->n;
  int n2=n>>1;
  int n4=n>>2;

  /* rotate */

  DATA_TYPE *iX = in+n2-7;
  DATA_TYPE *oX = out+n2+n4;
  DATA_TYPE *T  = init->trig+n4;

  do{
    oX         -= 4;
    oX[0]       = FUNC0(-iX[2] * T[3] - iX[0]  * T[2]);
    oX[1]       = FUNC0 (iX[0] * T[3] - iX[2]  * T[2]);
    oX[2]       = FUNC0(-iX[6] * T[1] - iX[4]  * T[0]);
    oX[3]       = FUNC0 (iX[4] * T[1] - iX[6]  * T[0]);
    iX         -= 8;
    T          += 4;
  }while(iX>=in);

  iX            = in+n2-8;
  oX            = out+n2+n4;
  T             = init->trig+n4;

  do{
    T          -= 4;
    oX[0]       =  FUNC0 (iX[4] * T[3] + iX[6] * T[2]);
    oX[1]       =  FUNC0 (iX[4] * T[2] - iX[6] * T[3]);
    oX[2]       =  FUNC0 (iX[0] * T[1] + iX[2] * T[0]);
    oX[3]       =  FUNC0 (iX[0] * T[0] - iX[2] * T[1]);
    iX         -= 8;
    oX         += 4;
  }while(iX>=in);

  FUNC2(init,out+n2,n2);
  FUNC1(init,out);

  /* roatate + window */

  {
    DATA_TYPE *oX1=out+n2+n4;
    DATA_TYPE *oX2=out+n2+n4;
    DATA_TYPE *iX =out;
    T             =init->trig+n2;

    do{
      oX1-=4;

      oX1[3]  =  FUNC0 (iX[0] * T[1] - iX[1] * T[0]);
      oX2[0]  = -FUNC0 (iX[0] * T[0] + iX[1] * T[1]);

      oX1[2]  =  FUNC0 (iX[2] * T[3] - iX[3] * T[2]);
      oX2[1]  = -FUNC0 (iX[2] * T[2] + iX[3] * T[3]);

      oX1[1]  =  FUNC0 (iX[4] * T[5] - iX[5] * T[4]);
      oX2[2]  = -FUNC0 (iX[4] * T[4] + iX[5] * T[5]);

      oX1[0]  =  FUNC0 (iX[6] * T[7] - iX[7] * T[6]);
      oX2[3]  = -FUNC0 (iX[6] * T[6] + iX[7] * T[7]);

      oX2+=4;
      iX    +=   8;
      T     +=   8;
    }while(iX<oX1);

    iX=out+n2+n4;
    oX1=out+n4;
    oX2=oX1;

    do{
      oX1-=4;
      iX-=4;

      oX2[0] = -(oX1[3] = iX[3]);
      oX2[1] = -(oX1[2] = iX[2]);
      oX2[2] = -(oX1[1] = iX[1]);
      oX2[3] = -(oX1[0] = iX[0]);

      oX2+=4;
    }while(oX2<iX);

    iX=out+n2+n4;
    oX1=out+n2+n4;
    oX2=out+n2;
    do{
      oX1-=4;
      oX1[0]= iX[3];
      oX1[1]= iX[2];
      oX1[2]= iX[1];
      oX1[3]= iX[0];
      iX+=4;
    }while(oX1>oX2);
  }
}