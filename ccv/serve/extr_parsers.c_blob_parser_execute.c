
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; unsigned char* data; size_t written; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ blob_parser_t ;


 scalar_t__ malloc (size_t) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 scalar_t__ realloc (unsigned char*,size_t) ;

void blob_parser_execute(blob_parser_t* parser, const char* buf, size_t len)
{
 if (parser->data.len == 0)
 {
  parser->data.len = (len * 3 + 1) / 2;
  parser->data.data = (unsigned char*)malloc(parser->data.len);
 } else if (parser->data.written + len > parser->data.len) {
  parser->data.len = ((parser->data.len + len) * 3 + 1) / 2;
  parser->data.data = (unsigned char*)realloc(parser->data.data, parser->data.len);
 }
 memcpy(parser->data.data + parser->data.written, buf, len);
 parser->data.written += len;
}
