
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_AREA_INFO ;
 int syscall (int ,int,void*) ;

int trap_AAS_AreaInfo( int areanum, void *info ) {
 return syscall( BOTLIB_AAS_AREA_INFO, areanum, info );
}
