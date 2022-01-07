
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t offset; unsigned int len; char* data; } ;


 int query_raise_unexpected_char (size_t,char,char,char const**) ;
 int query_raise_unexpected_eof (size_t,char const**) ;

__attribute__((used)) static struct buffer query_expect_char(struct buffer buff,
      char c, const char ** error)
{
   if ((unsigned)buff.offset >= buff.len)
      query_raise_unexpected_eof(buff.offset, error);
   else if (buff.data[buff.offset] != c)
      query_raise_unexpected_char(
            buff.offset, c, buff.data[buff.offset], error);
   else
      buff.offset++;
   return buff;
}
