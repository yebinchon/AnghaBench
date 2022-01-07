
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t offset; unsigned int len; int * data; } ;


 struct buffer query_chomp (struct buffer) ;
 int query_raise_expected_eof (size_t,int ,char const**) ;

__attribute__((used)) static struct buffer query_expect_eof(struct buffer buff, const char ** error)
{
   buff = query_chomp(buff);
   if ((unsigned)buff.offset < buff.len)
      query_raise_expected_eof(buff.offset, buff.data[buff.offset], error);
   return buff;
}
