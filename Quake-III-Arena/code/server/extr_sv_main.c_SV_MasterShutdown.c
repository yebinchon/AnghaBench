
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nextHeartbeatTime; } ;


 int SV_MasterHeartbeat () ;
 TYPE_1__ svs ;

void SV_MasterShutdown( void ) {

 svs.nextHeartbeatTime = -9999;
 SV_MasterHeartbeat();


 svs.nextHeartbeatTime = -9999;
 SV_MasterHeartbeat();



}
