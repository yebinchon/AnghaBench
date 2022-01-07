
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int header_index; int context; int (* on_value ) (int ,char const*,size_t,int ) ;int (* on_field ) (int ,char const*,size_t,int ) ;} ;
typedef TYPE_1__ query_string_parser_t ;






 int stub1 (int ,char const*,size_t,int ) ;
 int stub2 (int ,char const*,size_t,int ) ;
 int stub3 (int ,char const*,size_t,int ) ;
 int stub4 (int ,char const*,size_t,int ) ;

void query_string_parser_execute(query_string_parser_t* parser, const char* buf, size_t len)
{
 int i;
 size_t field_len = 0;
 const char* field_mark = buf;
 size_t value_len = 0;
 const char* value_mark = buf;
 for (i = 0; i < len; i++)
  switch (parser->state)
  {
   case 130:
    parser->state = 131;
    ++parser->header_index;
    field_mark = buf + i;
    field_len = 0;

   case 131:
    if (buf[i] != '&')
    {
     if (buf[i] == '=')
     {
      parser->state = 128;

      value_mark = buf + i + 1;
      value_len = 0;
     }
     if (parser->state == 131)
      field_len = buf + i + 1 - field_mark;
     break;
    } else

     parser->state = 128;

   case 128:
    if (field_len > 0 && parser->on_field)
    {
     parser->on_field(parser->context, field_mark, field_len, parser->header_index);
     field_len = 0;
    }
    if (buf[i] != '&')
    {
     value_len = buf + i + 1 - value_mark;
     break;
    } else
     parser->state = 129;

   case 129:

    field_mark = buf + i + 1;
    field_len = 0;
    if (value_len > 0 && parser->on_value)
    {
     parser->on_value(parser->context, value_mark, value_len, parser->header_index);

     value_len = 0;
    }
    ++parser->header_index;
    parser->state = 131;
    break;
  }
 if (field_len > 0 && parser->state == 131 && parser->on_field)
  parser->on_field(parser->context, field_mark, field_len, parser->header_index);
 else if (value_len > 0 && parser->state == 128 && parser->on_value)
  parser->on_value(parser->context, value_mark, value_len, parser->header_index);
}
