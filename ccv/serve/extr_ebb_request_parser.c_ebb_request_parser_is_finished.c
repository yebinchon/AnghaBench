
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cs; } ;
typedef TYPE_1__ ebb_request_parser ;


 scalar_t__ ebb_request_parser_first_final ;

int ebb_request_parser_is_finished(ebb_request_parser *parser)
{
  return parser->cs == ebb_request_parser_first_final;
}
