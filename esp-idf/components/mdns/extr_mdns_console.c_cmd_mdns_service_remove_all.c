
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdns_service_remove_all () ;

__attribute__((used)) static int cmd_mdns_service_remove_all(int argc, char** argv)
{
    mdns_service_remove_all();
    return 0;
}
