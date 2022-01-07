
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int online; } ;


 TYPE_1__* httpServer ;

void httpStopSystem() {
  if (httpServer != ((void*)0)) {
    httpServer->online = 0;
  }
}
