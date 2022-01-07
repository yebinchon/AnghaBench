
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct buffer {int * current; int * last; TYPE_1__ first; } ;



__attribute__((used)) static void
buffer_init(struct buffer *buffer)

{
   buffer->first.next = ((void*)0);
   buffer->last = ((void*)0);
   buffer->current = ((void*)0);
}
