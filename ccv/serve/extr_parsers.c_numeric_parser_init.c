
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double division; scalar_t__ result; int state; } ;
typedef TYPE_1__ numeric_parser_t ;


 int s_numeric_start ;

void numeric_parser_init(numeric_parser_t* parser)
{
 parser->state = s_numeric_start;
 parser->result = 0;
 parser->division = 0.1;
}
