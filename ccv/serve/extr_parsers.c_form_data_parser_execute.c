
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
struct TYPE_3__ {int state; size_t cursor; int disposition_index; char lookbehind; int context; int (* on_name ) (int ,char const*,size_t) ;} ;
typedef TYPE_1__ form_data_parser_t ;
typedef int form_data ;
typedef int content_disposition ;


 int s_form_data_done ;





 int stub1 (int ,char const*,size_t) ;
 int stub2 (int ,char const*,size_t) ;
 int tolower (char const) ;

void form_data_parser_execute(form_data_parser_t* parser, const char* buf, size_t len, int header_index)
{
 static const char content_disposition[] = "content-disposition";
 static const char form_data[] = "form-data;";
 static const char name[] = "name=\"";

 int i, cl;
 size_t name_len = 0;
 const char* name_mark = buf;
 for (i = 0; i < len; i++)
 {
  cl = tolower(buf[i]);
  switch (parser->state)
  {
   default:

    parser->state = 128;

   case 128:
    parser->state = 132;
    parser->cursor = 0;

   case 132:

    if (cl != content_disposition[parser->cursor])
    {
     parser->state = 128;
     return;
    }
    ++parser->cursor;
    if (parser->cursor == sizeof(content_disposition) - 1)
    {
     parser->disposition_index = header_index;
     parser->state = 129;
     parser->cursor = 0;
    }
    break;
   case 129:
    if (cl == ' ' || cl == '\t')
     continue;
    if (cl != form_data[parser->cursor])
    {
     parser->state = 128;
     return;
    }
    ++parser->cursor;
    if (parser->cursor == sizeof(form_data) - 1)
    {

     parser->state = 130;
     parser->cursor = 0;
    }
    break;
   case 130:
    if (cl == ' ' || cl == '\t')
     continue;
    if (cl != name[parser->cursor])
    {
     parser->state = 128;
     return;
    }
    ++parser->cursor;
    if (parser->cursor == sizeof(name) - 1)
    {
     parser->state = 131;
     parser->lookbehind = '\0';
     parser->cursor = 0;
     name_mark = buf + i + 1;
     name_len = 0;
    }
    break;
   case 131:
    if (parser->lookbehind != '\\' && buf[i] == '"')
    {
     parser->state = s_form_data_done;
     if (name_len > 0 && parser->on_name)
      parser->on_name(parser->context, name_mark, name_len);
     return;
    }
    name_len = buf + i + 1 - name_mark;


    parser->lookbehind = (parser->lookbehind != '\\') ? buf[i] : '\0';
    break;
  }
 }
 if (name_len > 0 && parser->state == 131 && parser->on_name)
  parser->on_name(parser->context, name_mark, name_len);
}
