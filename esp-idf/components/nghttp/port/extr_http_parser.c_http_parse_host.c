
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_parser_url {int field_set; TYPE_1__* field_data; } ;
typedef enum http_host_state { ____Placeholder_http_host_state } http_host_state ;
struct TYPE_2__ {size_t off; size_t len; } ;


 size_t UF_HOST ;
 size_t UF_PORT ;
 size_t UF_USERINFO ;
 int assert (int) ;
 int http_parse_host_char (int,char const) ;

 int s_http_host_dead ;
__attribute__((used)) static int
http_parse_host(const char * buf, struct http_parser_url *u, int found_at) {
  enum http_host_state s;

  const char *p;
  size_t buflen = u->field_data[UF_HOST].off + u->field_data[UF_HOST].len;

  assert(u->field_set & (1 << UF_HOST));

  u->field_data[UF_HOST].len = 0;

  s = found_at ? 128 : 134;

  for (p = buf + u->field_data[UF_HOST].off; p < buf + buflen; p++) {
    enum http_host_state new_s = http_parse_host_char(s, *p);

    if (new_s == s_http_host_dead) {
      return 1;
    }

    switch(new_s) {
      case 137:
        if (s != 137) {
          u->field_data[UF_HOST].off = p - buf;
        }
        u->field_data[UF_HOST].len++;
        break;

      case 133:
        if (s != 133) {
          u->field_data[UF_HOST].off = p - buf;
        }
        u->field_data[UF_HOST].len++;
        break;

      case 130:
      case 131:
        u->field_data[UF_HOST].len++;
        break;

      case 136:
        if (s != 136) {
          u->field_data[UF_PORT].off = p - buf;
          u->field_data[UF_PORT].len = 0;
          u->field_set |= (1 << UF_PORT);
        }
        u->field_data[UF_PORT].len++;
        break;

      case 129:
        if (s != 129) {
          u->field_data[UF_USERINFO].off = p - buf ;
          u->field_data[UF_USERINFO].len = 0;
          u->field_set |= (1 << UF_USERINFO);
        }
        u->field_data[UF_USERINFO].len++;
        break;

      default:
        break;
    }
    s = new_s;
  }


  switch (s) {
    case 134:
    case 132:
    case 133:
    case 130:
    case 131:
    case 135:
    case 129:
    case 128:
      return 1;
    default:
      break;
  }

  return 0;
}
