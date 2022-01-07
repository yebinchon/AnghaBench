
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_; } ;
struct rmsgpack_dom_value {TYPE_1__ val; int type; } ;
struct buffer {int offset; scalar_t__* data; } ;
typedef int int64_t ;


 int RDT_INT ;
 int STRING_REP_INT64 ;
 scalar_t__ isdigit (int) ;
 int query_raise_expected_number (int,char const**) ;
 scalar_t__ sscanf (scalar_t__*,int ,int *) ;

__attribute__((used)) static struct buffer query_parse_integer(struct buffer buff,
      struct rmsgpack_dom_value *value, const char **error)
{
   bool test = 0;

   value->type = RDT_INT;

   test = (sscanf(buff.data + buff.offset,
                         STRING_REP_INT64,
                         (int64_t*)&value->val.int_) == 0);

   if (test)
      query_raise_expected_number(buff.offset, error);
   else
   {
      while (isdigit((int)buff.data[buff.offset]))
         buff.offset++;
   }

   return buff;
}
