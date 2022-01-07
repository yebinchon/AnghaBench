
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t cursor; scalar_t__ name; } ;
typedef TYPE_1__ param_parser_t ;


 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static void on_form_data_name(void* context, const char* buf, size_t len)
{
 param_parser_t* parser = (param_parser_t*)context;
 if (len + parser->cursor > 31)
  return;
 memcpy(parser->name + parser->cursor, buf, len);
 parser->cursor += len;
}
