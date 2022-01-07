
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ern; struct TYPE_3__* kids; int pattern; struct TYPE_3__* link; } ;
typedef TYPE_1__* Rule ;


 void* alloc (int) ;
 scalar_t__* computekids (int ,char*,char*,int*) ;
 int print (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strcpy (void*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void emitkids(Rule rules, int nrules) {
 int i;
 Rule r, *rc = alloc((nrules + 1 + 1)*sizeof *rc);
 char **str = alloc((nrules + 1 + 1)*sizeof *str);

 for (i = 0, r = rules; r; r = r->link) {
  int j = 0;
  char buf[1024], *bp = buf;
  *computekids(r->pattern, "p", bp, &j) = 0;
  for (j = 0; str[j] && strcmp(str[j], buf); j++)
   ;
  if (str[j] == ((void*)0))
   str[j] = strcpy(alloc(strlen(buf) + 1), buf);
  r->kids = rc[j];
  rc[j] = r;
 }
 print("static void %Pkids(NODEPTR_TYPE p, int eruleno, NODEPTR_TYPE kids[]) {\n"
"%1if (!p)\n%2fatal(\"%Pkids\", \"Null tree\\n\", 0);\n"
"%1if (!kids)\n%2fatal(\"%Pkids\", \"Null kids\\n\", 0);\n"
"%1switch (eruleno) {\n");
 for (i = 0; (r = rc[i]) != ((void*)0); i++) {
  for ( ; r; r = r->kids)
   print("%1case %d: /* %R */\n", r->ern, r);
  print("%s%2break;\n", str[i]);
 }
 print("%1default:\n%2fatal(\"%Pkids\", \"Bad rule number %%d\\n\", eruleno);\n%1}\n}\n\n");
}
