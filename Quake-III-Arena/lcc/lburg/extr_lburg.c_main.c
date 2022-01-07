
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct block {struct block* link; } ;
struct TYPE_7__ {char* name; int reached; int * rules; struct TYPE_7__* link; } ;
typedef TYPE_1__* Nonterm ;


 int EOF ;
 int Tflag ;
 int ckreach (scalar_t__) ;
 int emitclosure (TYPE_1__*) ;
 int emitdefs (TYPE_1__*,int ) ;
 int emitheader () ;
 int emitkids (int ,int ) ;
 int emitlabel (int ,scalar_t__,int ) ;
 int emitnts (int ,int ) ;
 int emitrule (TYPE_1__*) ;
 int emitstring (int ) ;
 int emitstruct (TYPE_1__*,int ) ;
 scalar_t__ errcnt ;
 int exit (int) ;
 int feof (int *) ;
 void* fopen (char*,char*) ;
 int free (struct block*) ;
 int getc (int *) ;
 int * infp ;
 struct block* memlist ;
 int nrules ;
 int ntnumber ;
 TYPE_1__* nts ;
 int * outfp ;
 char* prefix ;
 int putc (int,int *) ;
 int rules ;
 scalar_t__ start ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int terms ;
 int yyerror (char*,char*,...) ;
 int yyparse () ;

int main(int argc, char *argv[]) {
 int c, i;
 Nonterm p;

 for (i = 1; i < argc; i++)
  if (strcmp(argv[i], "-T") == 0)
   Tflag = 1;
  else if (strncmp(argv[i], "-p", 2) == 0 && argv[i][2])
   prefix = &argv[i][2];
  else if (strncmp(argv[i], "-p", 2) == 0 && i + 1 < argc)
   prefix = argv[++i];
  else if (*argv[i] == '-' && argv[i][1]) {
   yyerror("usage: %s [-T | -p prefix]... [ [ input ] output ] \n",
    argv[0]);
   exit(1);
  } else if (infp == ((void*)0)) {
   if (strcmp(argv[i], "-") == 0)
    infp = stdin;
   else if ((infp = fopen(argv[i], "r")) == ((void*)0)) {
    yyerror("%s: can't read `%s'\n", argv[0], argv[i]);
    exit(1);
   }
  } else if (outfp == ((void*)0)) {
   if (strcmp(argv[i], "-") == 0)
    outfp = stdout;
   if ((outfp = fopen(argv[i], "w")) == ((void*)0)) {
    yyerror("%s: can't write `%s'\n", argv[0], argv[i]);
    exit(1);
   }
  }
 if (infp == ((void*)0))
  infp = stdin;
 if (outfp == ((void*)0))
  outfp = stdout;
 yyparse();
 if (start)
  ckreach(start);
 for (p = nts; p; p = p->link) {
  if (p->rules == ((void*)0))
   yyerror("undefined nonterminal `%s'\n", p->name);
  if (!p->reached)
   yyerror("can't reach nonterminal `%s'\n", p->name);
 }
 emitheader();
 emitdefs(nts, ntnumber);
 emitstruct(nts, ntnumber);
 emitnts(rules, nrules);
 emitstring(rules);
 emitrule(nts);
 emitclosure(nts);
 if (start)
  emitlabel(terms, start, ntnumber);
 emitkids(rules, nrules);
 if (!feof(infp))
  while ((c = getc(infp)) != EOF)
   putc(c, outfp);
 while (memlist) {
  struct block *q = memlist->link;
  free(memlist);
  memlist = q;
 }
 return errcnt > 0;
}
