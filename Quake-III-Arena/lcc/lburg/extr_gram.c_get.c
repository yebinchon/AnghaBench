
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__* bp ;
 char* buf ;
 int * fgets (char*,int,int ) ;
 int fputs (char*,int ) ;
 int infp ;
 int outfp ;
 scalar_t__ strcmp (char*,char*) ;
 int yylineno ;
 int yywarn (char*) ;

__attribute__((used)) static int get(void) {
 if (*bp == 0) {
  bp = buf;
  *bp = 0;
  if (fgets(buf, sizeof buf, infp) == ((void*)0))
   return EOF;
  yylineno++;
  while (buf[0] == '%' && buf[1] == '{' && buf[2] == '\n') {
   for (;;) {
    if (fgets(buf, sizeof buf, infp) == ((void*)0)) {
     yywarn("unterminated %{...%}\n");
     return EOF;
    }
    yylineno++;
    if (strcmp(buf, "%}\n") == 0)
     break;
    fputs(buf, outfp);
   }
   if (fgets(buf, sizeof buf, infp) == ((void*)0))
    return EOF;
   yylineno++;
  }
 }
 return *bp++;
}
