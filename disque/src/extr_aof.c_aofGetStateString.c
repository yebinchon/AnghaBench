
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_state; } ;





 TYPE_1__ server ;

char *aofGetStateString(void) {
    switch(server.aof_state) {
    case 130: return "off";
    case 129: return "on";
    case 128: return "wait-rewrite";
    default: return "unknown";
    }
}
