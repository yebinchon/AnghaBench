
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t offset; unsigned int len; scalar_t__* data; } ;


 scalar_t__ isspace (int) ;

__attribute__((used)) static struct buffer query_chomp(struct buffer buff)
{
   for (; (unsigned)buff.offset < buff.len
         && isspace((int)buff.data[buff.offset]); buff.offset++);
   return buff;
}
