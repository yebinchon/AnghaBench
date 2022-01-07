
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;


 int MatchToken (char*) ;
 int Parse2DMatrix (int,int,int *) ;

void Parse3DMatrix (int z, int y, int x, vec_t *m) {
 int i;

 MatchToken( "(" );

 for (i = 0 ; i < z ; i++) {
  Parse2DMatrix (y, x, m + i * x*y);
 }

 MatchToken( ")" );
}
