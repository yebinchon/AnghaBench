
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;


 double sqrt (double) ;

double VectorLength( const vec3_t v ) {
 int i;
 double length;

 length = 0;
 for (i=0 ; i< 3 ; i++)
  length += v[i]*v[i];
 length = sqrt (length);

 return length;
}
