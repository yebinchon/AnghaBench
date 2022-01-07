
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int * current; scalar_t__ end_count; int first; int * last; } ;



__attribute__((used)) static void
buffer_start_write(struct buffer *buffer)
{
   buffer->last = &buffer->first;
   buffer->end_count = 0;
   buffer->current = ((void*)0);
}
