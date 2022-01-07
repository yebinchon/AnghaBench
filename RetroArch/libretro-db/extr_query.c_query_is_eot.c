
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {unsigned int len; scalar_t__ offset; } ;



__attribute__((used)) static int query_is_eot(struct buffer buff)
{
   return ((unsigned)buff.offset >= buff.len);
}
