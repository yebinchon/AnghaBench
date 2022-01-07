
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;
typedef int prompt ;
typedef int UWORD ;
typedef int UBYTE ;
typedef int SWORD ;


 int FALSE ;
 int MEMORY_dPutByte (int,int ) ;
 int MEMORY_dPutWord (int,int) ;
 int Util_strupper (char*) ;
 char** instr6502 ;
 int parse_hex (char*,int*) ;
 int printf (char*,...) ;
 int safe_gets (char*,int,char*) ;
 int snprintf (char*,int,char*,int) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static UWORD assembler(UWORD addr)
{
 printf("Simple assembler (enter empty line to exit)\n");
 for (;;) {
  char s[128];
  char c[128];
  char *sp;
  char *cp;
  char *vp;
  char *tp;
  int i;
  int isa;
  UWORD value = 0;

  char prompt[7];
  snprintf(prompt, sizeof(prompt), "%04X: ", (int) addr);
  safe_gets(s, sizeof(s), prompt);
  if (s[0] == '\0')
   return addr;

  Util_strupper(s);

  sp = s;
  cp = c;

  for (i = 0; i < 3 && *sp != '\0'; i++)
   *cp++ = *sp++;

  *cp++ = ' ';

  tp = ((void*)0);
  isa = FALSE;


  while (*sp != '\0') {
   switch (*sp) {
   case ' ':
   case '\t':
   case '$':
   case '@':
    sp++;
    break;
   case '#':
   case '(':
   case ')':
   case ',':
    isa = FALSE;
    *cp++ = *sp++;
    break;
   default:
    if (tp != ((void*)0)) {
     if (*sp == 'X' || *sp == 'Y') {
      *cp++ = *sp++;
      break;
     }
     goto invalid_instr;
    }
    vp = s;
    do
     *vp++ = *sp++;
    while (strchr(" \t$@#(),", *sp) == ((void*)0) && *sp != '\0');


    *vp++ = '\0';
    tp = cp++;
    *tp = '0';
    isa = (s[0] == 'A' && s[1] == '\0');
    break;
   }
  }
  if (cp[-1] == ' ')
   cp--;
  *cp = '\0';


  if (tp != ((void*)0) && !parse_hex(s, &value)) {
   printf("Invalid operand!\n");
   continue;
  }

  for (;;) {

   for (i = 0; i < 256; i++) {
    if (strcmp(instr6502[i], c) == 0) {
     if (tp == ((void*)0)) {
      MEMORY_dPutByte(addr, (UBYTE) i);
      addr++;
     }
     else if (*tp == '0') {
      value -= (addr + 2);
      if ((SWORD) value < -128 || (SWORD) value > 127)
       printf("Branch out of range!\n");
      else {
       MEMORY_dPutByte(addr, (UBYTE) i);
       addr++;
       MEMORY_dPutByte(addr, (UBYTE) value);
       addr++;
      }
     }
     else if (*tp == '1') {
      c[3] = '\0';
      if (isa && (strcmp(c, "ASL") == 0 || strcmp(c, "LSR") == 0 ||
                  strcmp(c, "ROL") == 0 || strcmp(c, "ROR") == 0)) {
       printf("\"%s A\" is ambiguous.\n"
              "Use \"%s\" for accumulator mode or \"%s 0A\" for zeropage mode.\n", c, c, c);
      }
      else {
       MEMORY_dPutByte(addr, (UBYTE) i);
       addr++;
       MEMORY_dPutByte(addr, (UBYTE) value);
       addr++;
      }
     }
     else {
      MEMORY_dPutByte(addr, (UBYTE) i);
      addr++;
      MEMORY_dPutWord(addr, value);
      addr += 2;
     }
     goto next_instr;
    }
   }

   if (tp == ((void*)0) || *tp == '2')
    break;
   if (++*tp == '1' && value > 0xff)
    *tp = '2';
  }
 invalid_instr:
  printf("Invalid instruction!\n");
 next_instr:
  ;
 }
}
