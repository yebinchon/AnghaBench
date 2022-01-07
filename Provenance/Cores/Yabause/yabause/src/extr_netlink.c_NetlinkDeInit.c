
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NetlinkArea ;
 int NetworkDeInit () ;
 int free (scalar_t__) ;

void NetlinkDeInit(void)
{




   if (NetlinkArea)
      free(NetlinkArea);
}
