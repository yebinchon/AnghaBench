
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uri_parse_state_t ;
struct TYPE_9__ {size_t body; size_t state; size_t resource; TYPE_1__* param_map; scalar_t__ parsed; int name; int form_data_parser; int query_string_parser; } ;
typedef TYPE_2__ param_parser_t ;
struct TYPE_8__ {scalar_t__ offset; } ;
 int assert (int) ;
 size_t find_param_dispatch_state (TYPE_2__*,int ) ;
 int form_data_parser_execute (int *,char const*,size_t,int) ;
 int param_parser_terminate (TYPE_2__*) ;
 int param_type_parser_execute (TYPE_2__*,char const*,size_t) ;
 int param_type_parser_init (TYPE_2__*) ;
 int query_string_parser_execute (int *,char const*,size_t) ;
 size_t s_param_skip ;
 size_t s_param_start ;

void param_parser_execute(param_parser_t* parser, int resource_id, const char* buf, size_t len, uri_parse_state_t state, int header_index)
{
 switch (state)
 {
  default:
   break;
  case 128:
   query_string_parser_execute(&parser->query_string_parser, buf, len);
   break;
  case 133:
   if (parser->body == s_param_skip)
    break;
   if (parser->state != s_param_start && parser->state != parser->body)
    param_parser_terminate(parser);
   if (parser->state == s_param_start)
   {
    parser->state = parser->body;
    param_type_parser_init(parser);
   }
   param_type_parser_execute(parser, buf, len);
   break;
  case 129:
   if (parser->state != s_param_start)
    param_parser_terminate(parser);
   break;
  case 131:
  case 130:
   if (parser->state != s_param_start)
    param_parser_terminate(parser);
   assert(header_index >= 0);
   form_data_parser_execute(&parser->form_data_parser, buf, len, header_index);
   break;
  case 132:
   if (parser->state == s_param_start)
   {
    parser->state = find_param_dispatch_state(parser, parser->name);
    if (parser->state >= 0)
     param_type_parser_init(parser);
   }
   if (parser->state >= 0)
    param_type_parser_execute(parser, buf, len);
   break;
 }
 if (resource_id >= 0 && parser->resource != s_param_start)
  *(int*)(parser->parsed + parser->param_map[parser->resource].offset) = resource_id;
}
