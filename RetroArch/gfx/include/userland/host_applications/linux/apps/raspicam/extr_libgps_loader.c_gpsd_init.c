
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* server; int port; } ;
typedef TYPE_1__ gpsd_info ;


 int DEFAULT_GPSD_PORT ;
 int memset (TYPE_1__*,int ,int) ;

void gpsd_init(gpsd_info *gpsd)
{
   memset(gpsd, 0, sizeof(gpsd_info));
   gpsd->server = "localhost";
   gpsd->port = DEFAULT_GPSD_PORT;
}
