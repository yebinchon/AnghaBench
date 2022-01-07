
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headbit; int headptr; int headend; } ;
typedef TYPE_1__ oggpack_buffer ;


 int _span (TYPE_1__*) ;

void oggpack_adv(oggpack_buffer *b,int bits){
  bits+=b->headbit;
  b->headbit=bits&7;
  b->headptr+=bits/8;
  if((b->headend-=bits/8)<1)_span(b);
}
