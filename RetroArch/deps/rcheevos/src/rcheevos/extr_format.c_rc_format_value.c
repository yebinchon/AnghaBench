
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,unsigned int,...) ;

int rc_format_value(char* buffer, int size, unsigned value, int format) {
  unsigned a, b, c;
  int chars;

  switch (format) {
    case 132:
      a = value * 10 / 6;
      b = a / 100;
      a -= b * 100;
      c = b / 60;
      b -= c * 60;
      chars = snprintf(buffer, size, "%02u:%02u.%02u", c, b, a);
      break;

    case 129:
      a = value / 60;
      value -= a * 60;
      chars = snprintf(buffer, size, "%02u:%02u", a, value);
      break;

    case 133:
      a = value / 100;
      value -= a * 100;
      b = a / 60;
      a -= b * 60;
      chars = snprintf(buffer, size, "%02u:%02u.%02u", b, a, value);
      break;

    case 130:
      chars = snprintf(buffer, size, "%06u Points", value);
      break;

    case 128:
      chars = snprintf(buffer, size, "%01u", value);
      break;

    case 131:
    default:
      chars = snprintf(buffer, size, "%06u", value);
      break;
  }

  return chars;
}
