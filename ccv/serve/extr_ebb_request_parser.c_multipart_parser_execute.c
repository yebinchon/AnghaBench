
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int multipart_state; size_t multipart_index; char* multipart_lookbehind; } ;
typedef TYPE_1__ ebb_request_parser ;
struct TYPE_7__ {char* multipart_boundary; int (* on_part_data_complete ) (TYPE_2__*) ;int multipart_boundary_len; int number_of_multipart_headers; int (* on_multipart_headers_complete ) (TYPE_2__*) ;} ;


 char CR ;
 TYPE_2__* CURRENT ;
 int EMIT_DATA_CB (int ,char const*,int) ;
 int EMIT_HEADER_CB (int ,char const*,size_t) ;
 char LF ;
 int multipart_header_field ;
 int multipart_header_value ;
 int part_data ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 char tolower (char) ;

size_t multipart_parser_execute(ebb_request_parser* parser, const char *buf, size_t len)
{
  size_t i = 0;
  size_t mark = 0;
  char c, cl;
  int is_last = 0;

  while(!is_last) {
    c = buf[i];
    is_last = (i == (len - 1));
    switch (parser->multipart_state) {
      case 129:
  CURRENT->number_of_multipart_headers = 0;
        parser->multipart_index = 0;
        parser->multipart_state = 128;


      case 128:

        if (parser->multipart_index == CURRENT->multipart_boundary_len + 2) {
          if (c != CR) {
            return i;
          }
          parser->multipart_index++;
          break;
        } else if (parser->multipart_index == (CURRENT->multipart_boundary_len + 3)) {
          if (c != LF) {
            return i;
          }
    CURRENT->number_of_multipart_headers = 0;
          parser->multipart_index = 0;
          parser->multipart_state = 141;
          break;
        }
        if (c != CURRENT->multipart_boundary[parser->multipart_index]) {
          return i;
        }
        parser->multipart_index++;
        break;

      case 141:
        mark = i;
        parser->multipart_state = 142;


      case 142:
        if (c == CR) {
          parser->multipart_state = 137;
          break;
        }

        if (c == '-') {
          break;
        }

        if (c == ':') {
          EMIT_HEADER_CB(multipart_header_field, buf + mark, i - mark);
          parser->multipart_state = 138;
          break;
        }

        cl = tolower(c);
        if (cl < 'a' || cl > 'z') {
          return i;
        }
        if (is_last)
          EMIT_HEADER_CB(multipart_header_field, buf + mark, (i - mark) + 1);
        break;

      case 137:
        if (c != LF) {
          return i;
        }

        parser->multipart_state = 130;
        break;

      case 138:
        if (c == ' ') {
          break;
        }

        mark = i;
        parser->multipart_state = 140;


      case 140:
        if (c == CR) {
          EMIT_HEADER_CB(multipart_header_value, buf + mark, i - mark);
          parser->multipart_state = 139;
        }
        if (is_last)
          EMIT_HEADER_CB(multipart_header_value, buf + mark, (i - mark) + 1);
        break;

      case 139:
        if (c != LF) {
          return i;
        }
  CURRENT->number_of_multipart_headers++;
        parser->multipart_state = 141;
        break;

      case 130:
        if (CURRENT->on_multipart_headers_complete)
    CURRENT->on_multipart_headers_complete(CURRENT);
        mark = i;
        parser->multipart_state = 136;


      case 136:
        if (c == CR) {
          EMIT_DATA_CB(part_data, buf + mark, i - mark);
          mark = i;
          parser->multipart_state = 135;
          parser->multipart_lookbehind[0] = CR;
          break;
        }
        if (is_last)
          EMIT_DATA_CB(part_data, buf + mark, (i - mark) + 1);
        break;

      case 135:
        if (c == LF) {
          parser->multipart_state = 133;
          parser->multipart_lookbehind[1] = LF;
    CURRENT->number_of_multipart_headers = 0;
          parser->multipart_index = 0;
          break;
        }
        EMIT_DATA_CB(part_data, parser->multipart_lookbehind, 1);
        parser->multipart_state = 136;
        mark = i --;
        break;

      case 133:
        if (CURRENT->multipart_boundary[parser->multipart_index] != c) {
          EMIT_DATA_CB(part_data, parser->multipart_lookbehind, 2 + parser->multipart_index);
          parser->multipart_state = 136;
          mark = i --;
          break;
        }
        parser->multipart_lookbehind[2 + parser->multipart_index] = c;
        if ((++ parser->multipart_index) == CURRENT->multipart_boundary_len + 2) {
          if (CURRENT->on_part_data_complete)
      CURRENT->on_part_data_complete(CURRENT);
          parser->multipart_state = 134;
        }
        break;

      case 134:
        if (c == '-') {
          parser->multipart_state = 131;
          break;
        }
        if (c == CR) {
          parser->multipart_state = 132;
          break;
        }
        return i;

      case 131:
        if (c == '-') {
          parser->multipart_state = 143;
          break;
        }
        return i;

      case 132:
        if (c == LF) {
          parser->multipart_state = 141;
          break;
        }
        return i;

      case 143:
        break;

      default:
        return 0;
    }
    ++i;
  }

  return len;
}
