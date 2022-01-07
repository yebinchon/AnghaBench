
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ back; scalar_t__ front; scalar_t__ size; } ;
typedef TYPE_1__ list ;


 TYPE_1__* malloc (int) ;

list *make_list()
{
 list *l = malloc(sizeof(list));
 l->size = 0;
 l->front = 0;
 l->back = 0;
 return l;
}
