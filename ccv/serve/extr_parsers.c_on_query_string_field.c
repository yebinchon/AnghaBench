
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int header_index; int name; scalar_t__ cursor; } ;
typedef TYPE_1__ param_parser_t ;


 int memset (int ,int ,int) ;
 int on_form_data_name (void*,char const*,size_t) ;
 int param_parser_terminate (TYPE_1__*) ;

__attribute__((used)) static void on_query_string_field(void* context, const char* buf, size_t len, int header_index)
{
 param_parser_t* parser = (param_parser_t*)context;
 if (parser->header_index != header_index)
 {
  parser->header_index = header_index;

  parser->cursor = 0;
  memset(parser->name, 0, sizeof(parser->name));

  param_parser_terminate(parser);
 }
 on_form_data_name(context, buf, len);
}
