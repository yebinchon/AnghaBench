
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float DotProduct (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;

void G_BounceProjectile( vec3_t start, vec3_t impact, vec3_t dir, vec3_t endout ) {
 vec3_t v, newv;
 float dot;

 VectorSubtract( impact, start, v );
 dot = DotProduct( v, dir );
 VectorMA( v, -2*dot, dir, newv );

 VectorNormalize(newv);
 VectorMA(impact, 8192, newv, endout);
}
