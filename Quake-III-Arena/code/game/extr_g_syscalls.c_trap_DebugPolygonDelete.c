
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_DEBUG_POLYGON_DELETE ;
 int syscall (int ,int) ;

void trap_DebugPolygonDelete(int id) {
 syscall( G_DEBUG_POLYGON_DELETE, id );
}
