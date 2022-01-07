
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TESSreal ;


 int assert (int) ;
 int sqrtf (int) ;

__attribute__((used)) static void Normalize( TESSreal v[3] )
{
 TESSreal len = v[0]*v[0] + v[1]*v[1] + v[2]*v[2];

 assert( len > 0 );
 len = sqrtf( len );
 v[0] /= len;
 v[1] /= len;
 v[2] /= len;
}
