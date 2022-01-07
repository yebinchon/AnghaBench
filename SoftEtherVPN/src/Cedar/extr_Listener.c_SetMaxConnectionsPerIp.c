
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ DEFAULT_MAX_CONNECTIONS_PER_IP ;
 int MAX (scalar_t__,int ) ;
 int MIN_MAX_CONNECTIONS_PER_IP ;
 int max_connections_per_ip ;

void SetMaxConnectionsPerIp(UINT num)
{
 if (num == 0)
 {
  num = DEFAULT_MAX_CONNECTIONS_PER_IP;
 }
 max_connections_per_ip = MAX(num, MIN_MAX_CONNECTIONS_PER_IP);
}
