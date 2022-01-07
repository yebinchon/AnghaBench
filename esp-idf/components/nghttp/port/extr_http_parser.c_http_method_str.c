
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum http_method { ____Placeholder_http_method } http_method ;


 char const* ELEM_AT (int ,int,char*) ;
 int method_strings ;

const char *
http_method_str (enum http_method m)
{
  return ELEM_AT(method_strings, m, "<unknown>");
}
