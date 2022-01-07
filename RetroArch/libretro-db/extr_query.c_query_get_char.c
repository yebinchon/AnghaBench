
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t offset; char* data; } ;


 scalar_t__ query_is_eot (struct buffer) ;
 int query_raise_unexpected_eof (size_t,char const**) ;

__attribute__((used)) static struct buffer query_get_char(
      struct buffer buff, char * c,
      const char ** error)
{
   if (query_is_eot(buff))
   {
      query_raise_unexpected_eof(buff.offset, error);
      return buff;
   }

   *c = buff.data[buff.offset];
   buff.offset++;
   return buff;
}
