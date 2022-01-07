
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disposition_index; scalar_t__ on_name; void* context; scalar_t__ cursor; int state; } ;
typedef TYPE_1__ form_data_parser_t ;


 int s_form_data_start ;

void form_data_parser_init(form_data_parser_t* parser, void* context)
{
 parser->state = s_form_data_start;
 parser->cursor = 0;
 parser->disposition_index = -1;
 parser->context = context;
 parser->on_name = 0;
}
