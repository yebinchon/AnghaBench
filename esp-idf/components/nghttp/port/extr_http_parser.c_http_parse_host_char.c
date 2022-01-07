
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum http_host_state { ____Placeholder_http_host_state } http_host_state ;


 int IS_ALPHANUM (char const) ;
 int IS_HEX (char const) ;
 int IS_HOST_CHAR (char const) ;
 int IS_NUM (char const) ;
 int IS_USERINFO_CHAR (char const) ;

 int s_http_host_dead ;
__attribute__((used)) static enum http_host_state
http_parse_host_char(enum http_host_state s, const char ch) {
  switch(s) {
    case 129:
    case 128:
      if (ch == '@') {
        return 135;
      }

      if (IS_USERINFO_CHAR(ch)) {
        return 129;
      }
      break;

    case 135:
      if (ch == '[') {
        return 132;
      }

      if (IS_HOST_CHAR(ch)) {
        return 138;
      }

      break;

    case 138:
      if (IS_HOST_CHAR(ch)) {
        return 138;
      }


    case 133:
      if (ch == ':') {
        return 136;
      }

      break;

    case 134:
      if (ch == ']') {
        return 133;
      }


    case 132:
      if (IS_HEX(ch) || ch == ':' || ch == '.') {
        return 134;
      }

      if (s == 134 && ch == '%') {
        return 130;
      }
      break;

    case 131:
      if (ch == ']') {
        return 133;
      }


    case 130:

      if (IS_ALPHANUM(ch) || ch == '%' || ch == '.' || ch == '-' || ch == '_' ||
          ch == '~') {
        return 131;
      }
      break;

    case 137:
    case 136:
      if (IS_NUM(ch)) {
        return 137;
      }

      break;

    default:
      break;
  }
  return s_http_host_dead;
}
