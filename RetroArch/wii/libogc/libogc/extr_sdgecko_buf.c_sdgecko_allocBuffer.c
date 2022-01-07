
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct TYPE_2__* next; int * data; } ;


 TYPE_1__* s_freepool ;

u8* sdgecko_allocBuffer()
{
 u8 *buf = ((void*)0);

 if(s_freepool) {
  buf = s_freepool->data;
  s_freepool = s_freepool->next;
 }

 return buf;
}
