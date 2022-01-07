
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
typedef int Tokenrow ;
struct TYPE_2__ {int always; int deleted; char* file; } ;


 int Cplusplus ;
 int FATAL ;
 scalar_t__ Mflag ;
 int NINCLUDE ;
 int creat (char*,int) ;
 int doadefine (int *,int) ;
 int dup2 (int,int) ;
 int error (int ,char*,...) ;
 int fprintf (int ,char*,char*,char*) ;
 int getopt (int,char**,char*) ;
 int gettokens (int *,int) ;
 TYPE_1__* includelist ;
 int maketokenrow (int,int *) ;
 scalar_t__ newstring (int *,int,int ) ;
 int open (char*,int ) ;
 char* optarg ;
 int optind ;
 char* rcsid ;
 int setobjname (char*) ;
 int setsource (char*,int,char*) ;
 int stderr ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int unsetsource () ;
 int verbose ;

void
setup(int argc, char **argv)
{
 int c, fd, i;
 char *fp, *dp;
 Tokenrow tr;
 extern void setup_kwtab(void);

 setup_kwtab();
 while ((c = getopt(argc, argv, "MNOVv+I:D:U:F:lg")) != -1)
  switch (c) {
  case 'N':
   for (i=0; i<NINCLUDE; i++)
    if (includelist[i].always==1)
     includelist[i].deleted = 1;
   break;
  case 'I':
   for (i=NINCLUDE-2; i>=0; i--) {
    if (includelist[i].file==((void*)0)) {
     includelist[i].always = 1;
     includelist[i].file = optarg;
     break;
    }
   }
   if (i<0)
    error(FATAL, "Too many -I directives");
   break;
  case 'D':
  case 'U':
   setsource("<cmdarg>", -1, optarg);
   maketokenrow(3, &tr);
   gettokens(&tr, 1);
   doadefine(&tr, c);
   unsetsource();
   break;
  case 'M':
   Mflag++;
   break;
  case 'v':
   fprintf(stderr, "%s %s\n", argv[0], rcsid);
   break;
  case 'V':
   verbose++;
   break;
  case '+':
   Cplusplus++;
   break;
  default:
   break;
  }
 dp = ".";
 fp = "<stdin>";
 fd = 0;
 if (optind<argc) {
  if ((fp = strrchr(argv[optind], '/')) != ((void*)0)) {
   int len = fp - argv[optind];
   dp = (char*)newstring((uchar*)argv[optind], len+1, 0);
   dp[len] = '\0';
  }
  fp = (char*)newstring((uchar*)argv[optind], strlen(argv[optind]), 0);
  if ((fd = open(fp, 0)) <= 0)
   error(FATAL, "Can't open input file %s", fp);
 }
 if (optind+1<argc) {
  int fdo = creat(argv[optind+1], 0666);
  if (fdo<0)
   error(FATAL, "Can't open output file %s", argv[optind+1]);
  dup2(fdo, 1);
 }
 if(Mflag)
  setobjname(fp);
 includelist[NINCLUDE-1].always = 0;
 includelist[NINCLUDE-1].file = dp;
 setsource(fp, fd, ((void*)0));
}
