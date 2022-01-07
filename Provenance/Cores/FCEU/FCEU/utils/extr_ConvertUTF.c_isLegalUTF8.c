
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTF8 ;
typedef int Boolean ;



__attribute__((used)) static Boolean isLegalUTF8(const UTF8 *source, int length) {
    UTF8 a;
    const UTF8 *srcptr = source+length;
    switch (length) {
    default: return 0;

    case 4: if ((a = (*--srcptr)) < 0x80 || a > 0xBF) return 0;
    case 3: if ((a = (*--srcptr)) < 0x80 || a > 0xBF) return 0;
    case 2: if ((a = (*--srcptr)) > 0xBF) return 0;

 switch (*source) {

     case 0xE0: if (a < 0xA0) return 0; break;
     case 0xED: if (a > 0x9F) return 0; break;
     case 0xF0: if (a < 0x90) return 0; break;
     case 0xF4: if (a > 0x8F) return 0; break;
     default: if (a < 0x80) return 0;
 }

    case 1: if (*source >= 0x80 && *source < 0xC2) return 0;
    }
    if (*source > 0xF4) return 0;
    return 1;
}
