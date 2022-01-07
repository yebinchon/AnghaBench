
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer {size_t offset; scalar_t__* data; } ;
struct TYPE_2__ {int value; int invocation; } ;
struct argument {TYPE_1__ a; void* type; } ;


 void* AT_FUNCTION ;
 void* AT_VALUE ;
 scalar_t__ isalpha (int) ;
 struct buffer query_chomp (struct buffer) ;
 struct buffer query_parse_method_call (struct buffer,int *,char const**) ;
 struct buffer query_parse_table (struct buffer,int *,char const**) ;
 struct buffer query_parse_value (struct buffer,int *,char const**) ;
 scalar_t__ query_peek (struct buffer,char*) ;

__attribute__((used)) static struct buffer query_parse_argument(struct buffer buff,
      struct argument *arg, const char **error)
{
   buff = query_chomp(buff);

   if (
         isalpha((int)buff.data[buff.offset])
         && !(
               query_peek(buff, "nil")
            || query_peek(buff, "true")
            || query_peek(buff, "false")
            || query_peek(buff, "b\"")
            || query_peek(buff, "b'")
            )
      )
   {
      arg->type = AT_FUNCTION;
      buff = query_parse_method_call(buff,
            &arg->a.invocation, error);
   }
   else if (query_peek(buff, "{"))
   {
      arg->type = AT_FUNCTION;
      buff = query_parse_table(buff, &arg->a.invocation, error);
   }
   else
   {
      arg->type = AT_VALUE;
      buff = query_parse_value(buff, &arg->a.value, error);
   }
   return buff;
}
