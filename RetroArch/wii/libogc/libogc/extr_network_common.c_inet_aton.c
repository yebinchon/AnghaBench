
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct in_addr {int s_addr; } ;
typedef int s8_t ;
typedef int s32_t ;
typedef int s16_t ;


 int htonl (int) ;
 int isascii (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;
 int isspace (char) ;
 scalar_t__ isxdigit (char) ;

s8_t
 inet_aton(const char *cp, struct in_addr *addr)
 {
     u32_t val;
     s32_t base, n;
     char c;
     u32_t parts[4];
     u32_t* pp = parts;

     c = *cp;
     for (;;) {





         if (!isdigit(c))
             return (0);
         val = 0; base = 10;
         if (c == '0') {
             c = *++cp;
             if (c == 'x' || c == 'X')
                 base = 16, c = *++cp;
             else
                 base = 8;
         }
         for (;;) {
             if (isdigit(c)) {
                 val = (val * base) + (s16_t)(c - '0');
                 c = *++cp;
             } else if (base == 16 && isxdigit(c)) {
                 val = (val << 4) |
                     (s16_t)(c + 10 - (islower(c) ? 'a' : 'A'));
                 c = *++cp;
             } else
             break;
         }
         if (c == '.') {






             if (pp >= parts + 3)
                 return (0);
             *pp++ = val;
             c = *++cp;
         } else
             break;
     }



     if (c != '\0' && (!isascii(c) || !isspace(c)))
         return (0);




     n = pp - parts + 1;
     switch (n) {

     case 0:
         return (0);

     case 1:
         break;

     case 2:
         if (val > 0xffffff)
             return (0);
         val |= parts[0] << 24;
         break;

     case 3:
         if (val > 0xffff)
             return (0);
         val |= (parts[0] << 24) | (parts[1] << 16);
         break;

     case 4:
         if (val > 0xff)
             return (0);
         val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
         break;
     }
     if (addr)
         addr->s_addr = htonl(val);
     return (1);
 }
