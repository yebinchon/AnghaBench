
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t len; size_t offset; size_t data; } ;


 size_t strlen (char const*) ;
 scalar_t__ strncmp (size_t,char const*,size_t) ;

__attribute__((used)) static int query_peek(struct buffer buff, const char * data)
{
   size_t remain = buff.len - buff.offset;
   size_t size_data = strlen(data);

   if (remain < size_data)
      return 0;

   return (strncmp(buff.data + buff.offset,
            data, size_data) == 0);
}
