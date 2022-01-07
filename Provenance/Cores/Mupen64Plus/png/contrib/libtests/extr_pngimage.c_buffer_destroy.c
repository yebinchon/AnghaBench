
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_list {int dummy; } ;
struct TYPE_2__ {struct buffer_list* next; } ;
struct buffer {TYPE_1__ first; } ;


 int buffer_destroy_list (struct buffer_list*) ;
 int buffer_init (struct buffer*) ;

__attribute__((used)) static void
buffer_destroy(struct buffer *buffer)
{
   struct buffer_list *list = buffer->first.next;
   buffer_init(buffer);
   buffer_destroy_list(list);
}
