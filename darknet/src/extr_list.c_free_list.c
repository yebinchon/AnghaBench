
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int front; } ;
typedef TYPE_1__ list ;


 int free (TYPE_1__*) ;
 int free_node (int ) ;

void free_list(list *l)
{
 free_node(l->front);
 free(l);
}
