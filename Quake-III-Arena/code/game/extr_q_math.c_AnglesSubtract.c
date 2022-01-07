
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int AngleSubtract (int ,int ) ;

void AnglesSubtract( vec3_t v1, vec3_t v2, vec3_t v3 ) {
 v3[0] = AngleSubtract( v1[0], v2[0] );
 v3[1] = AngleSubtract( v1[1], v2[1] );
 v3[2] = AngleSubtract( v1[2], v2[2] );
}
