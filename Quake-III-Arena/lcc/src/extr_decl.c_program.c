
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHAR ;
 size_t EOI ;
 int FUNC ;
 int GLOBAL ;
 size_t ID ;
 scalar_t__ STATIC ;
 int STMT ;
 int dclglobal ;
 int deallocate (int ) ;
 int decl (int ) ;
 int error (char*) ;
 size_t gettok () ;
 int glevel ;
 scalar_t__* kind ;
 int level ;
 size_t t ;
 int warning (char*) ;
 scalar_t__ xref ;

void program(void) {
 int n;

 level = GLOBAL;
 for (n = 0; t != EOI; n++)
  if (kind[t] == CHAR || kind[t] == STATIC
  || t == ID || t == '*' || t == '(') {
   decl(dclglobal);
   deallocate(STMT);
   if (!(glevel >= 3 || xref))
   deallocate(FUNC);
  } else if (t == ';') {
   warning("empty declaration\n");
   t = gettok();
  } else {
   error("unrecognized declaration\n");
   t = gettok();
  }
 if (n == 0)
  warning("empty input file\n");
}
