
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int header_index; scalar_t__ state; int name; } ;
typedef TYPE_1__ param_parser_t ;


 scalar_t__ find_param_dispatch_state (TYPE_1__*,int ) ;
 int param_type_parser_execute (TYPE_1__*,char const*,size_t) ;
 int param_type_parser_init (TYPE_1__*) ;
 scalar_t__ s_param_start ;

__attribute__((used)) static void on_query_string_value(void* context, const char* buf, size_t len, int header_index)
{
 param_parser_t* parser = (param_parser_t*)context;
 if (parser->header_index == header_index)
 {
  if (parser->state == s_param_start)
  {
   parser->state = find_param_dispatch_state(parser, parser->name);
   if (parser->state >= 0)
    param_type_parser_init(parser);
  }
  if (parser->state >= 0)
   param_type_parser_execute(parser, buf, len);
 }
}
