
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cursor; scalar_t__ state; scalar_t__ string; } ;
typedef TYPE_1__ string_parser_t ;


 int CCV_CLI_INFO ;
 int PRINT (int ,char*,int) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 scalar_t__ s_string_overflow ;
 scalar_t__ s_string_start ;

void string_parser_execute(string_parser_t* parser, const char* buf, size_t len)
{
 if (parser->cursor + len > sizeof(parser->string) - 1)
 {
  PRINT(CCV_CLI_INFO, "string parameter overflow %zu\n", sizeof(parser->string));
  parser->state = s_string_overflow;
 }
 else if (parser->state == s_string_start) {
  memcpy(parser->string + parser->cursor, buf, len);
  parser->cursor += len;
 }
}
