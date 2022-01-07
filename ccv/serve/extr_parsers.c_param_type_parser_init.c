
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t state; int blob_parser; int string_parser; int coord_parser; int bool_parser; int numeric_parser; TYPE_1__* param_map; } ;
typedef TYPE_2__ param_parser_t ;
struct TYPE_4__ {int type; } ;
 int assert (int) ;
 int blob_parser_init (int *) ;
 int bool_parser_init (int *) ;
 int coord_parser_init (int *) ;
 int numeric_parser_init (int *) ;
 int string_parser_init (int *) ;

__attribute__((used)) static void param_type_parser_init(param_parser_t* parser)
{
 assert(parser->state >= 0);
 switch (parser->param_map[parser->state].type)
 {
  case 131:
  case 132:
  case 133:
  case 134:
   numeric_parser_init(&parser->numeric_parser);
   break;
  case 135:
   bool_parser_init(&parser->bool_parser);
   break;
  case 129:
  case 130:
   coord_parser_init(&parser->coord_parser);
   break;
  case 128:
   string_parser_init(&parser->string_parser);
   break;
  case 137:
  case 136:
   blob_parser_init(&parser->blob_parser);
   break;
 }
}
