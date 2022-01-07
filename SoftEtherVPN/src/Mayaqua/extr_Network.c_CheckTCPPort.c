
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CheckTCPPortEx (char*,int ,int ) ;
 int TIMEOUT_TCP_PORT_CHECK ;

bool CheckTCPPort(char *hostname, UINT port)
{
 return CheckTCPPortEx(hostname, port, TIMEOUT_TCP_PORT_CHECK);
}
