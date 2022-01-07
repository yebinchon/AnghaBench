
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct UPNPUrls {int controlURL; } ;
struct TYPE_2__ {int servicetype; } ;
struct IGDdatas {TYPE_1__ first; } ;


 int UPNP_GetStatusInfo (int ,int ,char*,unsigned int*,int *) ;
 scalar_t__ strcmp (char*,char*) ;

int
UPNPIGD_IsConnected(struct UPNPUrls * urls, struct IGDdatas * data)
{
 char status[64];
 unsigned int uptime;
 status[0] = '\0';
 UPNP_GetStatusInfo(urls->controlURL, data->first.servicetype,
                    status, &uptime, ((void*)0));
 if(0 == strcmp("Connected", status))
  return 1;
 else if(0 == strcmp("Up", status))
  return 1;
 else
  return 0;
}
