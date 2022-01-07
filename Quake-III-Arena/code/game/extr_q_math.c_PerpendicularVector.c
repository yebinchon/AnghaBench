
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int ProjectPointOnPlane (float*,float*,float* const) ;
 int VectorNormalize (float*) ;
 float fabs (float) ;

void PerpendicularVector( vec3_t dst, const vec3_t src )
{
 int pos;
 int i;
 float minelem = 1.0F;
 vec3_t tempvec;




 for ( pos = 0, i = 0; i < 3; i++ )
 {
  if ( fabs( src[i] ) < minelem )
  {
   pos = i;
   minelem = fabs( src[i] );
  }
 }
 tempvec[0] = tempvec[1] = tempvec[2] = 0.0F;
 tempvec[pos] = 1.0F;




 ProjectPointOnPlane( dst, tempvec, src );




 VectorNormalize( dst );
}
