
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdns_free () ;

__attribute__((used)) static int cmd_mdns_free(int argc, char** argv)
{
    mdns_free();
    return 0;
}
