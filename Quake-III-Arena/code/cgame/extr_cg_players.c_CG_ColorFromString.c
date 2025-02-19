
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int VectorClear (float*) ;
 int VectorSet (float*,int,int,int) ;
 int atoi (char const*) ;

__attribute__((used)) static void CG_ColorFromString( const char *v, vec3_t color ) {
 int val;

 VectorClear( color );

 val = atoi( v );

 if ( val < 1 || val > 7 ) {
  VectorSet( color, 1, 1, 1 );
  return;
 }

 if ( val & 1 ) {
  color[2] = 1.0f;
 }
 if ( val & 2 ) {
  color[1] = 1.0f;
 }
 if ( val & 4 ) {
  color[0] = 1.0f;
 }
}
