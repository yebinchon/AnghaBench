
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursor; int state; int string; } ;
typedef TYPE_1__ string_parser_t ;


 int memset (int ,int ,int) ;
 int s_string_start ;

void string_parser_init(string_parser_t* parser)
{
 memset(parser->string, 0, sizeof(parser->string));
 parser->state = s_string_start;
 parser->cursor = 0;
}
