
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Thex ;
 int desa_char (int) ;

__attribute__((used)) static void desa_uhexacat(unsigned int n, int ndigit, int header_char)
{
  int shf;
  desa_char(header_char);
  for(shf=(ndigit-1)*4; shf>=0; shf-=4) {
    desa_char(Thex[(n>>shf)&15] );
  }
}
