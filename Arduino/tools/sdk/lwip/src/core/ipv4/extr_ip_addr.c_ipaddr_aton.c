
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8_t ;
typedef unsigned long u32_t ;
typedef int ip_addr_t ;


 int LWIP_ASSERT (char*,int ) ;
 int htonl (unsigned long) ;
 int ip4_addr_set_u32 (int *,int ) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;
 int isspace (char) ;
 scalar_t__ isxdigit (char) ;

int
ipaddr_aton(const char *cp, ip_addr_t *addr)
{
  u32_t val;
  u8_t base;
  char c;
  char ch;
  unsigned long cutoff;
  int cutlim;
  u32_t parts[4];
  u32_t *pp = parts;

  c = *cp;
  for (;;) {





    if (!isdigit(c))
      return (0);
    val = 0;
    base = 10;
    if (c == '0') {
      c = *++cp;
      if (c == 'x' || c == 'X') {
        base = 16;
        c = *++cp;
      } else
        base = 8;
    }

    cutoff =(unsigned long)0xffffffff / (unsigned long)base;
    cutlim =(unsigned long)0xffffffff % (unsigned long)base;

    for (;;) {
      if (isdigit(c)) {
     ch = (int)(c - '0');

     if (val > cutoff || (val == cutoff && ch > cutlim))
      return (0);

        val = (val * base) + (int)(c - '0');
        c = *++cp;
      } else if (base == 16 && isxdigit(c)) {
     ch = (int)(c + 10 - (islower(c) ? 'a' : 'A'));

     if (val > cutoff || (val == cutoff && ch > cutlim))
      return (0);

     val = (val << 4) | (int)(c + 10 - (islower(c) ? 'a' : 'A'));
        c = *++cp;
      } else
        break;
    }
    if (c == '.') {






      if (pp >= parts + 3) {
        return (0);
      }
      *pp++ = val;
      c = *++cp;
    } else
      break;
  }



  if (c != '\0' && !isspace(c)) {
    return (0);
  }




  switch (pp - parts + 1) {

  case 0:
    return (0);

  case 1:
    break;

  case 2:
    if ((val > 0xffffffUL) || (parts[0] > 0xff)) {
      return (0);
    }
    val |= parts[0] << 24;
    break;

  case 3:
    if ((val > 0xffff) || (parts[0] > 0xff) || (parts[1] > 0xff)) {
      return (0);
    }
    val |= (parts[0] << 24) | (parts[1] << 16);
    break;

  case 4:
    if ((val > 0xff) || (parts[0] > 0xff) || (parts[1] > 0xff) || (parts[2] > 0xff)) {
      return (0);
    }
    val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
    break;
  default:
    LWIP_ASSERT("unhandled", 0);
    break;
  }
  if (addr) {
    ip4_addr_set_u32(addr, htonl(val));
  }
  return (1);
}
