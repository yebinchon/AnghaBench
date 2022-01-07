
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bool_; } ;
struct rmsgpack_dom_value {TYPE_1__ val; void* type; } ;
struct buffer {size_t offset; scalar_t__* data; } ;


 void* RDT_BOOL ;
 void* RDT_NULL ;
 scalar_t__ STRLEN_CONST (char*) ;
 scalar_t__ isdigit (int) ;
 struct buffer query_chomp (struct buffer) ;
 struct buffer query_parse_integer (struct buffer,struct rmsgpack_dom_value*,char const**) ;
 struct buffer query_parse_string (struct buffer,struct rmsgpack_dom_value*,char const**) ;
 scalar_t__ query_peek (struct buffer,char*) ;

__attribute__((used)) static struct buffer query_parse_value(struct buffer buff,
      struct rmsgpack_dom_value *value, const char **error)
{
   buff = query_chomp(buff);

   if (query_peek(buff, "nil"))
   {
      buff.offset += STRLEN_CONST("nil");
      value->type = RDT_NULL;
   }
   else if (query_peek(buff, "true"))
   {
      buff.offset += STRLEN_CONST("true");
      value->type = RDT_BOOL;
      value->val.bool_ = 1;
   }
   else if (query_peek(buff, "false"))
   {
      buff.offset += STRLEN_CONST("false");
      value->type = RDT_BOOL;
      value->val.bool_ = 0;
   }
   else if (query_peek(buff, "b") || query_peek(buff, "\"") || query_peek(buff, "'"))
      buff = query_parse_string(buff, value, error);
   else if (isdigit((int)buff.data[buff.offset]))
      buff = query_parse_integer(buff, value, error);
   return buff;
}
