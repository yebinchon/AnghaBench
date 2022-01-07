
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cs; int top; int * new_request; int multipart_state; int * fragment_mark; int uri_mark; int path_mark; int query_string_mark; int header_value_mark; int header_field_mark; int * current_request; scalar_t__ eating; scalar_t__ chunk_size; int stack; } ;
typedef TYPE_1__ ebb_request_parser ;


 int COPYSTACK (int ,int*) ;
 int EBB_RAGEL_STACK_SIZE ;
 int ebb_request_parser_start ;
 int s_uninitialized ;

void ebb_request_parser_init(ebb_request_parser *parser)
{
  int i;

  int cs = 0;
  int top = 0;
  int stack[EBB_RAGEL_STACK_SIZE];
 {
 cs = ebb_request_parser_start;
 top = 0;
 }
 parser->cs = cs;
  parser->top = top;
  COPYSTACK(parser->stack, stack);

  parser->chunk_size = 0;
  parser->eating = 0;

  parser->current_request = ((void*)0);

  parser->header_field_mark = parser->header_value_mark =
  parser->query_string_mark = parser->path_mark =
  parser->uri_mark = parser->fragment_mark = ((void*)0);

  parser->multipart_state = s_uninitialized;
  parser->new_request = ((void*)0);
}
