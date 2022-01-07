
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double division; scalar_t__ y; scalar_t__ x; int state; } ;
typedef TYPE_1__ coord_parser_t ;


 int s_coord_start ;

void coord_parser_init(coord_parser_t* parser)
{
 parser->state = s_coord_start;
 parser->x = parser->y = 0;
 parser->division = 0.1;
}
