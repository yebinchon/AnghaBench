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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int VC_CONTAINER_LOG_ERROR ; 
 int VC_CONTAINER_LOG_INFO ; 
 int /*<<< orphan*/  fps ; 
 char* psz_in ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC4(int argc, char **argv)
{
   int i, j, k;
   int32_t *p_verbosity;

   /* Parse the command line arguments */
   for(i = 1; i < argc; i++)
   {
      if(!argv[i]) continue;

      if(argv[i][0] != '-')
      {
         /* Not an option argument so will be the input URI */
         psz_in = argv[i];
         continue;
      }

      /* We are now dealing with command line options */
      switch(argv[i][1])
      {
      case 'v':
         j = 2;
         p_verbosity = &verbosity;
         *p_verbosity = VC_CONTAINER_LOG_ERROR|VC_CONTAINER_LOG_INFO;
         for(k = 0; k < 2 && argv[i][j+k] == 'v'; k++)
            *p_verbosity = (*p_verbosity << 1) | 1 ;
         break;
      case 'f':
         if(i+1 == argc || !argv[i+1]) goto invalid_option;
         fps = FUNC3(argv[++i], 0, 0);
         break;
      case 'h': goto usage;
      default: goto invalid_option;
      }
      continue;
   }

   /* Sanity check that we have at least an input uri */
   if(!psz_in)
   {
     FUNC0(0, "missing uri argument");
     goto usage;
   }

   return 0;

 invalid_option:
   FUNC0(0, "invalid command line option (%s)", argv[i]);

 usage:
   psz_in = FUNC2(argv[0], '\\'); if(psz_in) psz_in++;
   if(!psz_in) {psz_in = FUNC2(argv[0], '/'); if(psz_in) psz_in++;}
   if(!psz_in) psz_in = argv[0];
   FUNC1(0, "");
   FUNC1(0, "usage: %s [options] uri", psz_in);
   FUNC1(0, "options list:");
   FUNC1(0, " -vxx  : general verbosity level (replace xx with a number of \'v\')");
   FUNC1(0, " -f    : required frame rate/second (frame interval must not exceed 1/f)");
   FUNC1(0, " -h    : help");
   return 1;
}