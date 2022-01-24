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
typedef  int /*<<< orphan*/  ogg_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FLOOR_fromdB_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int n, int x0,int x1,int y0,int y1,ogg_int32_t *d){
  int dy=y1-y0;
  int adx=x1-x0;
  int ady=FUNC1(dy);
  int base=dy/adx;
  int sy=(dy<0?base-1:base+1);
  int x=x0;
  int y=y0;
  int err=0;

  if(n>x1)n=x1;
  ady-=FUNC1(base*adx);

  if(x<n)
    d[x]= FUNC0(d[x],FLOOR_fromdB_LOOKUP[y]);

  while(++x<n){
    err=err+ady;
    if(err>=adx){
      err-=adx;
      y+=sy;
    }else{
      y+=base;
    }
    d[x]= FUNC0(d[x],FLOOR_fromdB_LOOKUP[y]);
  }
}