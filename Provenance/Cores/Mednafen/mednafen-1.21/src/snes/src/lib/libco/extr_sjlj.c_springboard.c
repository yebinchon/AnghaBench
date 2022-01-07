
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* coentry ) () ;} ;
struct TYPE_3__ {int context; } ;


 TYPE_2__* co_running ;
 TYPE_1__* creating ;
 scalar_t__ sigsetjmp (int ,int ) ;
 int stub1 () ;

__attribute__((used)) static void springboard(int ignored) {
  if(sigsetjmp(creating->context, 0)) {
    co_running->coentry();
  }
}
