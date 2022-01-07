
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char little_endian; char mulops_calls; char wants_callb; char wants_argb; char left_to_right; char wants_dag; int (* defsymbol ) (TYPE_1__*) ;int stabend; int * stabline; } ;
struct TYPE_9__ {int stabend; int * stabline; } ;
struct TYPE_8__ {void* sclass; void* type; } ;
typedef int FILE ;


 int Aflag ;
 int EXIT_FAILURE ;
 void* EXTERN ;
 int GLOBAL ;
 TYPE_7__* IR ;
 int PERM ;
 int Pflag ;
 TYPE_1__* YYcheck ;
 TYPE_1__* YYnull ;
 int assert (int *) ;
 int atoi (char*) ;
 char* comment ;
 int density ;
 int errlimit ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprint (int ,char*,char*,char*) ;
 int * freopen (char*,char*,int ) ;
 void* func (int ,int *,int) ;
 int glevel ;
 int globals ;
 void* install (char*,int *,int ,int ) ;
 char* rcsid ;
 TYPE_4__ stabIR ;
 int stabend ;
 int * stabline ;
 int stderr ;
 int stdin ;
 int stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* string (char*) ;
 char* stringn (char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtod (char*,int *) ;
 int strtol (char*,int *,int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int type_init (int,char**) ;
 int voidptype ;
 int wflag ;
 int xref ;

void main_init(int argc, char *argv[]) {
 char *infile = ((void*)0), *outfile = ((void*)0);
 int i;
 static int inited;

 if (inited)
  return;
 inited = 1;
 type_init(argc, argv);
 for (i = 1; i < argc; i++)
  if (strcmp(argv[i], "-g") == 0 || strcmp(argv[i], "-g2") == 0)
   glevel = 2;
  else if (strncmp(argv[i], "-g", 2) == 0) {
   char *p = strchr(argv[i], ',');
   glevel = atoi(argv[i]+2);
   if (p) {
    comment = p + 1;
    if (glevel == 0)
     glevel = 1;
    if (stabIR.stabline == ((void*)0)) {
     stabIR.stabline = IR->stabline;
     stabIR.stabend = IR->stabend;
     IR->stabline = stabline;
     IR->stabend = stabend;
    }
   }
  } else if (strcmp(argv[i], "-x") == 0)
   xref++;
  else if (strcmp(argv[i], "-A") == 0) {
   ++Aflag;
  } else if (strcmp(argv[i], "-P") == 0)
   Pflag++;
  else if (strcmp(argv[i], "-w") == 0)
   wflag++;
  else if (strcmp(argv[i], "-n") == 0) {
   if (!YYnull) {
    YYnull = install(string("_YYnull"), &globals, GLOBAL, PERM);
    YYnull->type = func(voidptype, ((void*)0), 1);
    YYnull->sclass = EXTERN;
    (*IR->defsymbol)(YYnull);
   }
  } else if (strncmp(argv[i], "-n", 2) == 0) {
   char *p = strchr(argv[i], ',');
   if (p) {
    YYcheck = install(string(p+1), &globals, GLOBAL, PERM);
    YYcheck->type = func(voidptype, ((void*)0), 1);
    YYcheck->sclass = EXTERN;
    (*IR->defsymbol)(YYcheck);
    p = stringn(argv[i]+2, p - (argv[i]+2));
   } else
    p = string(argv[i]+2);
   YYnull = install(p, &globals, GLOBAL, PERM);
   YYnull->type = func(voidptype, ((void*)0), 1);
   YYnull->sclass = EXTERN;
   (*IR->defsymbol)(YYnull);
  } else if (strcmp(argv[i], "-v") == 0)
   fprint(stderr, "%s %s\n", argv[0], rcsid);
  else if (strncmp(argv[i], "-s", 2) == 0)
   density = strtod(&argv[i][2], ((void*)0));
  else if (strncmp(argv[i], "-errout=", 8) == 0) {
   FILE *f = fopen(argv[i]+8, "w");
   if (f == ((void*)0)) {
    fprint(stderr, "%s: can't write errors to `%s'\n", argv[0], argv[i]+8);
    exit(EXIT_FAILURE);
   }
   fclose(f);
   f = freopen(argv[i]+8, "w", stderr);
   assert(f);
  } else if (strncmp(argv[i], "-e", 2) == 0) {
   int x;
   if ((x = strtol(&argv[i][2], ((void*)0), 0)) > 0)
    errlimit = x;
  } else if (strncmp(argv[i], "-little_endian=", 15) == 0)
   IR->little_endian = argv[i][15] - '0';
  else if (strncmp(argv[i], "-mulops_calls=", 18) == 0)
   IR->mulops_calls = argv[i][18] - '0';
  else if (strncmp(argv[i], "-wants_callb=", 13) == 0)
   IR->wants_callb = argv[i][13] - '0';
  else if (strncmp(argv[i], "-wants_argb=", 12) == 0)
   IR->wants_argb = argv[i][12] - '0';
  else if (strncmp(argv[i], "-left_to_right=", 15) == 0)
   IR->left_to_right = argv[i][15] - '0';
  else if (strncmp(argv[i], "-wants_dag=", 11) == 0)
   IR->wants_dag = argv[i][11] - '0';
  else if (*argv[i] != '-' || strcmp(argv[i], "-") == 0) {
   if (infile == ((void*)0))
    infile = argv[i];
   else if (outfile == ((void*)0))
    outfile = argv[i];
  }

 if (infile != ((void*)0) && strcmp(infile, "-") != 0
 && freopen(infile, "r", stdin) == ((void*)0)) {
  fprint(stderr, "%s: can't read `%s'\n", argv[0], infile);
  exit(EXIT_FAILURE);
 }
 if (outfile != ((void*)0) && strcmp(outfile, "-") != 0
 && freopen(outfile, "w", stdout) == ((void*)0)) {
  fprint(stderr, "%s: can't write `%s'\n", argv[0], outfile);
  exit(EXIT_FAILURE);
 }
}
