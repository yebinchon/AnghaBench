
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int rcc_program_ty ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int _O_BINARY ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 float assert (int) ;
 char* ctime (int *) ;
 int do_program (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int * freopen (char*,char*,int ) ;
 int printf (char*,...) ;
 int rcc_read_program (int ) ;
 int rcsid ;
 int read_int (int ) ;
 int stderr ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strstr (int ,char*) ;
 int strtod (int,int *) ;
 int time (int *) ;

int main(int argc, char *argv[]) {
 int i, version;
 float stamp = (assert(strstr(rcsid, ",v")), strtod(strstr(rcsid, ",v")+2, ((void*)0)))
;
 char *infile = ((void*)0), *outfile = ((void*)0);
 rcc_program_ty pickle;

 for (i = 1; i < argc; i++)
  if (*argv[i] != '-' || strcmp(argv[i], "-") == 0) {
   if (infile == ((void*)0))
    infile = argv[i];
   else if (outfile == ((void*)0))
    outfile = argv[i];
  }
 if (infile != ((void*)0) && strcmp(infile, "-") != 0
 && freopen(infile, "rb", stdin) == ((void*)0)) {
  fprintf(stderr, "%s: can't read `%s'\n", argv[0], infile);
  exit(EXIT_FAILURE);
 }
 if (infile == ((void*)0) || strcmp(infile, "-") == 0)
  infile = "Standard Input";




 if (outfile != ((void*)0) && strcmp(outfile, "-") != 0
 && freopen(outfile, "w", stdout) == ((void*)0)) {
  fprintf(stderr, "%s: can't write `%s'\n", argv[0], outfile);
  exit(EXIT_FAILURE);
 }
 version = read_int(stdin);
 assert(version/100 == (int)stamp);
 pickle = rcc_read_program(stdin);
 printf("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\"\n");
 printf("<html><head><title>%s</title>\n"
 "<link rev=made href=\"mailto:drh@microsoft.com\">\n"
 "</head><body>\n<h1>%s</h1>\n", infile, infile);
 printf("<p>version = %d.%d</p>", version/100, version%100);
 do_program(pickle);
 {
  time_t t;
  time(&t);
  printf("<hr><address>%s</address>\n", ctime(&t));
 }
 printf("</body></html>\n");
 return EXIT_SUCCESS;
}
