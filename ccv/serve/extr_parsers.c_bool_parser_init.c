
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursor; int state; } ;
typedef TYPE_1__ bool_parser_t ;


 int s_bool_start ;

void bool_parser_init(bool_parser_t* parser)
{
 parser->state = s_bool_start;
 parser->cursor = 0;
}
