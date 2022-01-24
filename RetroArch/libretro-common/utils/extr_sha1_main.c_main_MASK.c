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
struct SHA1Context {int* Message_Digest; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SHA1Context*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct SHA1Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct SHA1Context*) ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int argc, char *argv[])
{
   struct SHA1Context sha;         /* SHA-1 context                 */
   FILE        *fp;                /* File pointer for reading files*/
   char        c;                  /* Character read from file      */
   int         i;                  /* Counter                       */
   int         reading_stdin;      /* Are we reading standard in?   */
   int         read_stdin = 0;     /* Have we read stdin?           */

   /*
    *  Check the program arguments and print usage information if -?
    *  or --help is passed as the first argument.
    */
   if (argc > 1 && (FUNC11(argv[1],"-?") ||
            FUNC11(argv[1],"--help")))
   {
      FUNC12();
      return 1;
   }

   /*
    *  For each filename passed in on the command line, calculate the
    *  SHA-1 value and display it.
    */
   for(i = 0; i < argc; i++)
   {
      /*
       *  We start the counter at 0 to guarantee entry into the for
       *  loop. So if 'i' is zero, we will increment it now.  If there
       *  is no argv[1], we will use STDIN below.
       */
      if (i == 0)
         i++;

      if (argc == 1 || FUNC11(argv[i],"-"))
      {
#ifdef WIN32
         setmode(fileno(stdin), _O_BINARY);
#endif
         fp = stdin;
         reading_stdin = 1;
      }
      else
      {
         if (!(fp = FUNC7(argv[i],"rb")))
         {
            FUNC8(stderr,
                  "sha: unable to open file %s\n",
                  argv[i]);
            return 2;
         }
         reading_stdin = 0;
      }

      /*
       *  We do not want to read STDIN multiple times
       */
      if (reading_stdin)
      {
         if (read_stdin)
            continue;

         read_stdin = 1;
      }

      /*
       *  Reset the SHA-1 context and process input
       */
      FUNC1(&sha);

      c = FUNC5(fp);
      while(!FUNC4(fp))
      {
         FUNC0(&sha, &c, 1);
         c = FUNC5(fp);
      }

      if (!reading_stdin)
         FUNC3(fp);

      if (!FUNC2(&sha))
      {
         FUNC8(stderr,
               "sha: could not compute message digest for %s\n",
               reading_stdin?"STDIN":argv[i]);
      }
      else
      {
         FUNC9( "%08X %08X %08X %08X %08X - %s\n",
               sha.Message_Digest[0],
               sha.Message_Digest[1],
               sha.Message_Digest[2],
               sha.Message_Digest[3],
               sha.Message_Digest[4],
               reading_stdin?"STDIN":argv[i]);
      }
   }

   return 0;
}