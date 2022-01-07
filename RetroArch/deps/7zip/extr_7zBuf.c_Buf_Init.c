
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_1__ CBuf ;



void Buf_Init(CBuf *p)
{
   p->data = 0;
   p->size = 0;
}
