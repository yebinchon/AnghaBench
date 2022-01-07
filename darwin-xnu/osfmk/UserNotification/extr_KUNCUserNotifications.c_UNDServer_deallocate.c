
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNDServerRef ;


 scalar_t__ IP_VALID (int ) ;
 int ipc_port_release_send (int ) ;

__attribute__((used)) static void
UNDServer_deallocate(
 UNDServerRef UNDServer)
{
 if (IP_VALID(UNDServer))
  ipc_port_release_send(UNDServer);
}
