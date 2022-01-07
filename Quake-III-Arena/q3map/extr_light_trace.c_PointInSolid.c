
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 int PointInSolid_r (int ,int ) ;

qboolean PointInSolid( vec3_t start ) {
 return PointInSolid_r( start, 0 );
}
