
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ read_count; int first; int * current; } ;



__attribute__((used)) static void
buffer_start_read(struct buffer *buffer)
{
   buffer->current = &buffer->first;
   buffer->read_count = 0;
}
