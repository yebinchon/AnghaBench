
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ DEFAULT_MAX_UNESTABLISHED_CONNECTIONS ;
 int MAX (scalar_t__,int ) ;
 int max_connections_per_ip ;
 int max_unestablished_connections ;

void SetMaxUnestablishedConnections(UINT num)
{
 if (num == 0)
 {
  num = DEFAULT_MAX_UNESTABLISHED_CONNECTIONS;
 }

 max_unestablished_connections = MAX(num, max_connections_per_ip);
}
