
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tqh_first; } ;
struct TYPE_5__ {TYPE_1__ head; } ;
typedef int GLFWbool ;
typedef TYPE_2__ EventQueue ;



__attribute__((used)) static GLFWbool emptyEventQueue(EventQueue* queue)
{
    return queue->head.tqh_first == ((void*)0);
}
