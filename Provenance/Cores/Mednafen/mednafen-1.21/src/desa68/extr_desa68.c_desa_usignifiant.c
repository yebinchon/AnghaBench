
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Thex ;
 int desa_char (char) ;

__attribute__((used)) static void desa_usignifiant(unsigned int n)
{
  int shf;
  desa_char('$');
  for(shf=(sizeof(int)*2-1)*4; shf>=0 && !(n>>shf); shf-=4);
  if(shf<0) shf=0;
  for(; shf>=0; shf-=4)
    desa_char(Thex[(n>>shf)&15] );
}
