
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refEntity_t ;


 int CG_R_ADDREFENTITYTOSCENE ;
 int syscall (int ,int const*) ;

void trap_R_AddRefEntityToScene( const refEntity_t *re ) {
 syscall( CG_R_ADDREFENTITYTOSCENE, re );
}
