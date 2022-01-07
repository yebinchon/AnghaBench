
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int O_BINARY ;
 int STDIN ;
 int STDOUT ;
 scalar_t__ TRUE ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ pnm2png (int *,int *,int *,scalar_t__,scalar_t__) ;
 int setmode (int ,int ) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int usage () ;

int main(int argc, char *argv[])
{
  FILE *fp_rd = stdin;
  FILE *fp_al = ((void*)0);
  FILE *fp_wr = stdout;
  BOOL interlace = FALSE;
  BOOL alpha = FALSE;
  int argi;

  for (argi = 1; argi < argc; argi++)
  {
    if (argv[argi][0] == '-')
    {
      switch (argv[argi][1])
      {
        case 'i':
          interlace = TRUE;
          break;
        case 'a':
          alpha = TRUE;
          argi++;
          if ((fp_al = fopen (argv[argi], "rb")) == ((void*)0))
          {
            fprintf (stderr, "PNM2PNG\n");
            fprintf (stderr, "Error:  alpha-channel file %s does not exist\n",
               argv[argi]);
            exit (1);
          }
          break;
        case 'h':
        case '?':
          usage();
          exit(0);
          break;
        default:
          fprintf (stderr, "PNM2PNG\n");
          fprintf (stderr, "Error:  unknown option %s\n", argv[argi]);
          usage();
          exit(1);
          break;
      }
    }
    else if (fp_rd == stdin)
    {
      if ((fp_rd = fopen (argv[argi], "rb")) == ((void*)0))
      {
        fprintf (stderr, "PNM2PNG\n");
        fprintf (stderr, "Error:  file %s does not exist\n", argv[argi]);
        exit (1);
      }
    }
    else if (fp_wr == stdout)
    {
      if ((fp_wr = fopen (argv[argi], "wb")) == ((void*)0))
      {
        fprintf (stderr, "PNM2PNG\n");
        fprintf (stderr, "Error:  can not create PNG-file %s\n", argv[argi]);
        exit (1);
      }
    }
    else
    {
      fprintf (stderr, "PNM2PNG\n");
      fprintf (stderr, "Error:  too many parameters\n");
      usage();
      exit (1);
    }
  }
  if (pnm2png (fp_rd, fp_wr, fp_al, interlace, alpha) == FALSE)
  {
    fprintf (stderr, "PNM2PNG\n");
    fprintf (stderr, "Error:  unsuccessful converting to PNG-image\n");
    exit (1);
  }


  fclose (fp_rd);

  fclose (fp_wr);

  if (alpha)
    fclose (fp_al);

  return 0;
}
