
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int data; } ;
struct TYPE_12__ {int string; } ;
struct TYPE_11__ {int y; int x; } ;
struct TYPE_10__ {int result; } ;
struct TYPE_9__ {double result; } ;
struct TYPE_14__ {scalar_t__ state; scalar_t__ cursor; int name; TYPE_5__ blob_parser; int context; TYPE_4__ string_parser; TYPE_3__ coord_parser; scalar_t__ parsed; TYPE_2__ bool_parser; TYPE_1__ numeric_parser; TYPE_7__* param_map; } ;
typedef TYPE_6__ param_parser_t ;
struct TYPE_15__ {int type; int (* on_blob ) (int ,int ) ;int (* on_string ) (int ,int ) ;scalar_t__ offset; } ;
typedef TYPE_7__ param_dispatch_t ;
typedef int ccv_size_t ;
typedef int ccv_point_t ;
 int ccv_point (int,int) ;
 int ccv_size (int,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ s_param_start ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

void param_parser_terminate(param_parser_t* parser)
{
 if (parser->state >= 0)
 {
  const param_dispatch_t* dispatch = parser->param_map + parser->state;
  switch (dispatch->type)
  {
   case 131:
    *(int*)(parser->parsed + dispatch->offset) = (int)(parser->numeric_parser.result + 0.5);
    break;
   case 132:
    if (*(int*)(parser->parsed + dispatch->offset) < 0)
     *(int*)(parser->parsed + dispatch->offset) = (int)(parser->numeric_parser.result + 0.5);
    break;
   case 133:
    *(float*)(parser->parsed + dispatch->offset) = (float)parser->numeric_parser.result;
    break;
   case 134:
    *(double*)(parser->parsed + dispatch->offset) = parser->numeric_parser.result;
    break;
   case 135:
    *(int*)(parser->parsed + dispatch->offset) = parser->bool_parser.result;
    break;
   case 129:
    *(ccv_size_t*)(parser->parsed + dispatch->offset) = ccv_size((int)(parser->coord_parser.x + 0.5), (int)(parser->coord_parser.y + 0.5));
    break;
   case 130:
    *(ccv_point_t*)(parser->parsed + dispatch->offset) = ccv_point((int)(parser->coord_parser.x + 0.5), (int)(parser->coord_parser.y + 0.5));
    break;
   case 128:
    if (dispatch->on_string)
     dispatch->on_string(parser->context, parser->string_parser.string);
    break;
   case 137:
   case 136:
    if (dispatch->on_blob)
     dispatch->on_blob(parser->context, parser->blob_parser.data);
    break;
  }
 }
 if (parser->state != s_param_start)
 {
  parser->state = s_param_start;
  memset(parser->name, 0, sizeof(parser->name));
  parser->cursor = 0;
 }
}
