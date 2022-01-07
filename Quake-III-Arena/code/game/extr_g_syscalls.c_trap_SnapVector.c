
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_SNAPVECTOR ;
 int syscall (int ,float*) ;

void trap_SnapVector( float *v ) {
 syscall( G_SNAPVECTOR, v );
 return;
}
