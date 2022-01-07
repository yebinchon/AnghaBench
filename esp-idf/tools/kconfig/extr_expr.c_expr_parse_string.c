
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_value {void* s; int u; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
typedef enum string_value_kind { ____Placeholder_string_value_kind } string_value_kind ;
 scalar_t__ errno ;
 scalar_t__ isxdigit (char) ;
 int k_invalid ;
 int k_signed ;
 int k_string ;
 int k_unsigned ;
 void* strtoll (char const*,char**,int) ;
 int strtoull (char const*,char**,int) ;

__attribute__((used)) static enum string_value_kind expr_parse_string(const char *str,
      enum symbol_type type,
      union string_value *val)
{
 char *tail;
 enum string_value_kind kind;

 errno = 0;
 switch (type) {
 case 133:
 case 129:
  return k_string;
 case 131:
  val->s = strtoll(str, &tail, 10);
  kind = k_signed;
  break;
 case 132:
  val->u = strtoull(str, &tail, 16);
  kind = k_unsigned;
  break;
 case 130:
 case 128:
  val->s = strtoll(str, &tail, 0);
  kind = k_signed;
  break;
 default:
  return k_invalid;
 }
 return !errno && !*tail && tail > str && isxdigit(tail[-1])
        ? kind : k_string;
}
