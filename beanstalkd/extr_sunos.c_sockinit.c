
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int port_create () ;
 int portfd ;
 int twarn (char*) ;

int
sockinit(void)
{
    portfd = port_create();
    if (portfd == -1) {
        twarn("port_create");
        return -1;
    }
    return 0;
}
