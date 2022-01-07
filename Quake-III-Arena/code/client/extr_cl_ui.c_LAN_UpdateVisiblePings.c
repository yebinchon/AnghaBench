
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CL_UpdateVisiblePings_f (int) ;

qboolean LAN_UpdateVisiblePings(int source ) {
 return CL_UpdateVisiblePings_f(source);
}
