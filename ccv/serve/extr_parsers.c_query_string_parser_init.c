
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int header_index; scalar_t__ on_value; scalar_t__ on_field; void* context; int state; } ;
typedef TYPE_1__ query_string_parser_t ;


 int s_query_string_start ;

void query_string_parser_init(query_string_parser_t* parser, void* context)
{
 parser->state = s_query_string_start;
 parser->context = context;
 parser->header_index = -1;
 parser->on_field = 0;
 parser->on_value = 0;
}
