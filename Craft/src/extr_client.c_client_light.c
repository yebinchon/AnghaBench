
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_enabled ;
 int client_send (char*) ;
 int snprintf (char*,int,char*,int,int,int,int) ;

void client_light(int x, int y, int z, int w) {
    if (!client_enabled) {
        return;
    }
    char buffer[1024];
    snprintf(buffer, 1024, "L,%d,%d,%d,%d\n", x, y, z, w);
    client_send(buffer);
}
