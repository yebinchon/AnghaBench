
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* privateIpStr; int * conn; int state; } ;


 int MONITOR_STATE_INITIALIZING ;
 int TSDB_IPv4ADDR_LEN ;
 TYPE_1__* monitor ;
 int monitorInitConnCb ;
 int monitorInitDatabase () ;
 int monitorPrint (char*) ;
 int strcpy (scalar_t__*,int ) ;
 int taos_connect_a (int *,char*,int ,char*,int ,int ,TYPE_1__*,int **) ;
 int tsInternalIp ;
 int tsInternalPass ;
 int tsPrivateIp ;

void monitorInitConn(void *para, void *unused) {
  monitorPrint("starting to initialize monitor service ..");
  monitor->state = MONITOR_STATE_INITIALIZING;

  if (monitor->privateIpStr[0] == 0) {



    strcpy(monitor->privateIpStr, tsInternalIp);

    for (int i = 0; i < TSDB_IPv4ADDR_LEN; ++i) {
      if (monitor->privateIpStr[i] == '.') {
        monitor->privateIpStr[i] = '_';
      }
    }
  }

  if (monitor->conn == ((void*)0)) {
    taos_connect_a(((void*)0), "monitor", tsInternalPass, "", 0, monitorInitConnCb, monitor, &(monitor->conn));
  } else {
    monitorInitDatabase();
  }
}
