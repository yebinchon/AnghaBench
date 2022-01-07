
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* supports_secure_connections ) () ;} ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BTM_PeerSupportsSecureConnections (int ) ;
 TYPE_1__* controller_get_interface () ;
 scalar_t__ stub1 () ;

BOOLEAN BTM_BothEndsSupportSecureConnections(BD_ADDR bd_addr)
{
    return ((controller_get_interface()->supports_secure_connections()) &&
            (BTM_PeerSupportsSecureConnections(bd_addr)));
}
