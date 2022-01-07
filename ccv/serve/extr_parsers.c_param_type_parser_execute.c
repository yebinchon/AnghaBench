
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int state; } ;
struct TYPE_12__ {int state; } ;
struct TYPE_13__ {int state; } ;
struct TYPE_11__ {int state; } ;
struct TYPE_9__ {size_t state; int blob_parser; TYPE_3__ string_parser; TYPE_6__ coord_parser; TYPE_7__ bool_parser; TYPE_5__ numeric_parser; TYPE_1__* param_map; } ;
typedef TYPE_2__ param_parser_t ;
struct TYPE_8__ {int type; } ;
 int assert (int) ;
 int blob_parser_execute (int *,char const*,size_t) ;
 int bool_parser_execute (TYPE_7__*,char const*,size_t) ;
 int coord_parser_execute (TYPE_6__*,char const*,size_t) ;
 int numeric_parser_execute (TYPE_5__*,char const*,size_t) ;
 int s_bool_illegal ;
 int s_coord_illegal ;
 int s_numeric_illegal ;
 void* s_param_skip ;
 int s_string_overflow ;
 int string_parser_execute (TYPE_3__*,char const*,size_t) ;

__attribute__((used)) static void param_type_parser_execute(param_parser_t* parser, const char* buf, size_t len)
{
 assert(parser->state >= 0);
 switch (parser->param_map[parser->state].type)
 {
  case 131:
  case 132:
  case 133:
  case 134:
   numeric_parser_execute(&parser->numeric_parser, buf, len);
   if (parser->numeric_parser.state == s_numeric_illegal)
    parser->state = s_param_skip;
   break;
  case 135:
   bool_parser_execute(&parser->bool_parser, buf, len);
   if (parser->bool_parser.state == s_bool_illegal)
    parser->state = s_param_skip;
   break;
  case 129:
  case 130:
   coord_parser_execute(&parser->coord_parser, buf, len);
   if (parser->coord_parser.state == s_coord_illegal)
    parser->state = s_param_skip;
   break;
  case 128:
   string_parser_execute(&parser->string_parser, buf, len);
   if (parser->string_parser.state == s_string_overflow)
    parser->state = s_param_skip;
   break;
  case 137:
  case 136:
   blob_parser_execute(&parser->blob_parser, buf, len);
   break;
 }
}
