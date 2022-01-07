
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COM_MatchToken (char**,char*) ;
 int Parse2DMatrix (char**,int,int,float*) ;

void Parse3DMatrix (char **buf_p, int z, int y, int x, float *m) {
 int i;

 COM_MatchToken( buf_p, "(" );

 for (i = 0 ; i < z ; i++) {
  Parse2DMatrix (buf_p, y, x, m + i * x*y);
 }

 COM_MatchToken( buf_p, ")" );
}
