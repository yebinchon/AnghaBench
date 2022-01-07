
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cinematicName; } ;
typedef TYPE_1__ windowDef_t ;
struct TYPE_5__ {int (* playCinematic ) (scalar_t__,int ,int ,int ,int ) ;int (* stopCinematic ) (int) ;} ;


 TYPE_3__* DC ;
 int stub1 (scalar_t__,int ,int ,int ,int ) ;
 int stub2 (int) ;

__attribute__((used)) static void Window_CacheContents(windowDef_t *window) {
 if (window) {
  if (window->cinematicName) {
   int cin = DC->playCinematic(window->cinematicName, 0, 0, 0, 0);
   DC->stopCinematic(cin);
  }
 }
}
