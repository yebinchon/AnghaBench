
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isValidDisc () ;
 int sceCdStop () ;
 int sceCdSync (int ) ;

void *CDVDRpc_Stop()
{
    if (isValidDisc()) {
        sceCdStop();
        sceCdSync(0);
    }

    return ((void*)0);
}
