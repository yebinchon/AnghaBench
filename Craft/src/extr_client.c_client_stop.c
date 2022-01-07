
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_enabled ;
 int close (int ) ;
 int free (int ) ;
 scalar_t__ qsize ;
 int queue ;
 scalar_t__ running ;
 int sd ;

void client_stop() {
    if (!client_enabled) {
        return;
    }
    running = 0;
    close(sd);





    qsize = 0;
    free(queue);


}
