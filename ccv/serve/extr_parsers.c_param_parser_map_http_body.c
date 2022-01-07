
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int string_type ;
typedef int size_type ;
typedef int point_type ;
struct TYPE_5__ {char const* property; int type; } ;
typedef TYPE_1__ param_dispatch_t ;
typedef int number_type ;
typedef int int_type ;
struct TYPE_6__ {int written; int len; char* data; scalar_t__ on_release; } ;
typedef TYPE_2__ ebb_buf ;
typedef int bool_type ;
typedef int blob_type ;
 char* ebb_http_header ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 int snprintf (char*,int,char*,size_t) ;
 int strlen (char const*) ;

ebb_buf param_parser_map_http_body(const param_dispatch_t* param_map, size_t len, const char* response_format)
{
 ebb_buf body;
 int i;
 static const char int_type[] = "integer";
 static const char bool_type[] = "boolean";
 static const char number_type[] = "number";
 static const char size_type[] = "size";
 static const char point_type[] = "point";
 static const char string_type[] = "string";
 static const char blob_type[] = "blob";
 size_t body_len = 12;
 for (i = 0; i < len; i++)
 {
  body_len += strlen(param_map[i].property) + 6;
  switch (param_map[i].type)
  {
   case 131:
   case 132:
    body_len += sizeof(int_type) - 1;
    break;
   case 133:
   case 134:
    body_len += sizeof(number_type) - 1;
    break;
   case 135:
    body_len += sizeof(bool_type) - 1;
    break;
   case 130:
    body_len += sizeof(point_type) - 1;
    break;
   case 129:
    body_len += sizeof(size_type) - 1;
    break;
   case 128:
    body_len += sizeof(string_type) - 1;
    break;
   case 137:
   case 136:
    body_len += sizeof(blob_type) - 1;
    break;
  }
 }
 if (response_format)
  body_len += 12 + strlen(response_format);
 body_len += 1;
 char* data = (char*)malloc(192 + body_len);
 snprintf(data, 192, ebb_http_header, body_len);
 body.written = strlen(data);
 memcpy(data + body.written, "{\"request\":{", 12);
 body.written += 12 + 1;
 for (i = 0; i < len; i++)
 {
  data[body.written - 1] = '"';
  size_t property_len = strlen(param_map[i].property);
  memcpy(data + body.written, param_map[i].property, property_len);
  body.written += property_len + 3;
  data[body.written - 3] = '"';
  data[body.written - 2] = ':';
  data[body.written - 1] = '"';
  switch (param_map[i].type)
  {
   case 131:
   case 132:
    memcpy(data + body.written, int_type, sizeof(int_type) - 1);
    body.written += sizeof(int_type) + 2;
    break;
   case 133:
   case 134:
    memcpy(data + body.written, number_type, sizeof(number_type) - 1);
    body.written += sizeof(number_type) + 2;
    break;
   case 135:
    memcpy(data + body.written, bool_type, sizeof(bool_type) - 1);
    body.written += sizeof(bool_type) + 2;
    break;
   case 130:
    memcpy(data + body.written, point_type, sizeof(point_type) - 1);
    body.written += sizeof(point_type) + 2;
    break;
   case 129:
    memcpy(data + body.written, size_type, sizeof(size_type) - 1);
    body.written += sizeof(size_type) + 2;
    break;
   case 128:
    memcpy(data + body.written, string_type, sizeof(string_type) - 1);
    body.written += sizeof(string_type) + 2;
    break;
   case 137:
   case 136:
    memcpy(data + body.written, blob_type, sizeof(blob_type) - 1);
    body.written += sizeof(blob_type) + 2;
    break;
  }
  data[body.written - 3] = '"';
  data[body.written - 2] = (i == len - 1) ? '}' : ',';
 }
 if (response_format)
 {
  memcpy(data + body.written - 1, ",\"response\":", 12);
  body.written += 11;
  size_t response_len = strlen(response_format);
  memcpy(data + body.written, response_format, response_len);
  body.written += response_len + 1;
 }
 data[body.written - 1] = '}';
 data[body.written] = '\n';
 body.len = body.written + 1;
 body.data = data;
 body.on_release = 0;
 return body;
}
