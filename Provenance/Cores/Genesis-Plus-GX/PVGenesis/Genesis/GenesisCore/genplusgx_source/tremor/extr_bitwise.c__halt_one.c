
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headend; } ;
typedef TYPE_1__ oggpack_buffer ;


 int _adv_halt (TYPE_1__*) ;

__attribute__((used)) static int _halt_one(oggpack_buffer *b){
  if(b->headend<1){
    _adv_halt(b);
    return -1;
  }
  return 0;
}
