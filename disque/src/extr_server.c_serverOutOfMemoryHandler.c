
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LL_WARNING ;
 int serverLog (int ,char*,size_t) ;
 int serverPanic (char*) ;

void serverOutOfMemoryHandler(size_t allocation_size) {
    serverLog(LL_WARNING,"Out Of Memory allocating %zu bytes!",
        allocation_size);
    serverPanic("Disque aborting for OUT OF MEMORY");
}
