#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  STDIN ; 
 int /*<<< orphan*/  STDOUT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char *argv[])
{
  FILE *fp_rd = stdin;
  FILE *fp_al = NULL;
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
          if ((fp_al = FUNC2 (argv[argi], "rb")) == NULL)
          {
            FUNC3 (stderr, "PNM2PNG\n");
            FUNC3 (stderr, "Error:  alpha-channel file %s does not exist\n",
               argv[argi]);
            FUNC0 (1);
          }
          break;
        case 'h':
        case '?':
          FUNC6();
          FUNC0(0);
          break;
        default:
          FUNC3 (stderr, "PNM2PNG\n");
          FUNC3 (stderr, "Error:  unknown option %s\n", argv[argi]);
          FUNC6();
          FUNC0(1);
          break;
      } /* end switch */
    }
    else if (fp_rd == stdin)
    {
      if ((fp_rd = FUNC2 (argv[argi], "rb")) == NULL)
      {
        FUNC3 (stderr, "PNM2PNG\n");
        FUNC3 (stderr, "Error:  file %s does not exist\n", argv[argi]);
        FUNC0 (1);
      }
    }
    else if (fp_wr == stdout)
    {
      if ((fp_wr = FUNC2 (argv[argi], "wb")) == NULL)
      {
        FUNC3 (stderr, "PNM2PNG\n");
        FUNC3 (stderr, "Error:  can not create PNG-file %s\n", argv[argi]);
        FUNC0 (1);
      }
    }
    else
    {
      FUNC3 (stderr, "PNM2PNG\n");
      FUNC3 (stderr, "Error:  too many parameters\n");
      FUNC6();
      FUNC0 (1);
    }
  } /* end for */

#ifdef __TURBOC__
  /* set stdin/stdout to binary, we're reading the PNM always! in binary format */
  if (fp_rd == stdin)
  {
    setmode (STDIN, O_BINARY);
  }
  if (fp_wr == stdout)
  {
    setmode (STDOUT, O_BINARY);
  }
#endif

  /* call the conversion program itself */
  if (FUNC4 (fp_rd, fp_wr, fp_al, interlace, alpha) == FALSE)
  {
    FUNC3 (stderr, "PNM2PNG\n");
    FUNC3 (stderr, "Error:  unsuccessful converting to PNG-image\n");
    FUNC0 (1);
  }

  /* close input file */
  FUNC1 (fp_rd);
  /* close output file */
  FUNC1 (fp_wr);
  /* close alpha file */
  if (alpha)
    FUNC1 (fp_al);

  return 0;
}