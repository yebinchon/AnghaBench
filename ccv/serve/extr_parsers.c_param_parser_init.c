
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int on_value; int on_field; } ;
struct TYPE_12__ {int on_name; } ;
struct TYPE_9__ {size_t len; char* parsed; void* body; void* resource; int name; scalar_t__ cursor; void* context; TYPE_2__ const* param_map; void* state; TYPE_3__ query_string_parser; TYPE_7__ form_data_parser; } ;
typedef TYPE_1__ param_parser_t ;
struct TYPE_10__ {int type; int offset; } ;
typedef TYPE_2__ param_dispatch_t ;




 int assert (int) ;
 int form_data_parser_init (TYPE_7__*,TYPE_1__*) ;
 int memset (int ,int ,int) ;
 int on_form_data_name ;
 int on_query_string_field ;
 int on_query_string_value ;
 int query_string_parser_init (TYPE_3__*,TYPE_1__*) ;
 void* s_param_start ;

void param_parser_init(param_parser_t* parser, const param_dispatch_t* param_map, size_t len, void* parsed, void* context)
{
 form_data_parser_init(&parser->form_data_parser, parser);
 query_string_parser_init(&parser->query_string_parser, parser);
 parser->form_data_parser.on_name = on_form_data_name;
 parser->query_string_parser.on_field = on_query_string_field;
 parser->query_string_parser.on_value = on_query_string_value;
 parser->state = s_param_start;
 parser->param_map = param_map;
 parser->len = len;
 parser->parsed = (char*)parsed;
 parser->context = context;
 parser->cursor = 0;
 memset(parser->name, 0, sizeof(parser->name));

 parser->body = parser->resource = s_param_start;
 int i;
 for (i = 0; i < len; i++)
  switch (param_map[i].type)
  {
   default:
    break;
   case 128:
    assert(parser->resource == s_param_start);
    *(int*)(parser->parsed + param_map[i].offset) = -1;
    parser->resource = i;
    break;
   case 129:
    assert(parser->body == s_param_start);
    parser->body = i;
    break;
  }
}
