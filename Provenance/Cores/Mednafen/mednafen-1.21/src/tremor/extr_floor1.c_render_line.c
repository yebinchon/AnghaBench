
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_int32_t ;


 int * FLOOR_fromdB_LOOKUP ;
 int MULT31_SHIFT15 (int ,int ) ;
 int abs (int) ;

__attribute__((used)) static void render_line(int n, int x0,int x1,int y0,int y1,ogg_int32_t *d){
  int dy=y1-y0;
  int adx=x1-x0;
  int ady=abs(dy);
  int base=dy/adx;
  int sy=(dy<0?base-1:base+1);
  int x=x0;
  int y=y0;
  int err=0;

  if(n>x1)n=x1;
  ady-=abs(base*adx);

  if(x<n)
    d[x]= MULT31_SHIFT15(d[x],FLOOR_fromdB_LOOKUP[y]);

  while(++x<n){
    err=err+ady;
    if(err>=adx){
      err-=adx;
      y+=sy;
    }else{
      y+=base;
    }
    d[x]= MULT31_SHIFT15(d[x],FLOOR_fromdB_LOOKUP[y]);
  }
}
