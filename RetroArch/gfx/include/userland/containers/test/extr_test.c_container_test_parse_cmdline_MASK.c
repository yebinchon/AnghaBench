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
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  LONG_MIN ; 
 size_t MAX_SEEKS ; 
 int VC_CONTAINER_LOG_ERROR ; 
 int VC_CONTAINER_LOG_INFO ; 
 int /*<<< orphan*/  VC_CONTAINER_SEEK_FLAG_FORWARD ; 
 int /*<<< orphan*/  b_audio ; 
 int b_client_io ; 
 int b_dump ; 
 int /*<<< orphan*/  b_errorcode ; 
 int b_info ; 
 int b_packetize ; 
 int b_seek ; 
 int /*<<< orphan*/  b_subs ; 
 int /*<<< orphan*/  b_video ; 
 int /*<<< orphan*/  packets_num ; 
 char* psz_in ; 
 char* psz_out ; 
 int /*<<< orphan*/ * seek_flags ; 
 int /*<<< orphan*/ * seek_offsets ; 
 size_t seeks ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  track_num ; 
 int verbosity ; 
 int verbosity_input ; 
 int verbosity_output ; 

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
      case 'i': b_info = 1; break;
      case 'S': b_seek = 1; break;
      case 'd': b_dump = 1; break;
      case 'c': b_client_io = 1; break;
      case 'v':
         if(argv[i][2] == 'i') {j = 3; p_verbosity = &verbosity_input;}
         else if(argv[i][2] == 'o') {j = 3; p_verbosity = &verbosity_output;}
         else {j = 2; p_verbosity = &verbosity;}
         *p_verbosity = VC_CONTAINER_LOG_ERROR|VC_CONTAINER_LOG_INFO;
         for(k = 0; k < 2 && argv[i][j+k] == 'v'; k++)
            *p_verbosity = (*p_verbosity << 1) | 1 ;
         break;
      case 's':
         if(i+1 == argc || !argv[i+1]) goto invalid_option;
         if(seeks >= MAX_SEEKS) goto invalid_option;
         seek_flags[seeks] = argv[i][2] == 'f' ? VC_CONTAINER_SEEK_FLAG_FORWARD : 0;
         seek_offsets[seeks] = FUNC3(argv[++i], 0, 0);
         if(seek_offsets[seeks] < 0 || seek_offsets[seeks] == LONG_MAX) goto invalid_option;
         seeks++;
         break;
      case 'n':
         if(argv[i][2] == 'a') b_audio = 0;
         else if(argv[i][2] == 'v') b_video = 0;
         else if(argv[i][2] == 's') b_subs = 0;
         else if(argv[i][2] == 'r') b_errorcode = 0;
         else goto invalid_option;
         break;
      case 'e':
         if(argv[i][2] == 'p') b_packetize = 1;
         else goto invalid_option;
         break;
      case 'o':
         if(i+1 == argc || !argv[i+1] || argv[i+1][0] == '-') goto invalid_option;
         psz_out = argv[++i];
         break;
      case 'p':
         if(i+1 == argc || !argv[i+1]) goto invalid_option;
         packets_num = FUNC3(argv[++i], 0, 0);
         if(packets_num < 0 || packets_num == LONG_MAX) goto invalid_option;
         break;
      case 't':
         if(i+1 == argc || !argv[i+1]) goto invalid_option;
         track_num = FUNC3(argv[++i], 0, 0);
         if(track_num == LONG_MIN || track_num == LONG_MAX) goto invalid_option;
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
   FUNC1(0, " -i    : only print information on the container");
   FUNC1(0, " -p X  : read only X packets from the container");
   FUNC1(0, " -t X  : read only packets from track X");
   FUNC1(0, " -s X  : seek to X milliseconds before starting reading");
   FUNC1(0, " -sf X : seek forward to X milliseconds before starting reading");
   FUNC1(0, " -S    : do seek testing");
   FUNC1(0, " -d    : dump the data read from the container to files (-o to name file)");
   FUNC1(0, " -o uri: output to another uri (i.e. re-muxing)");
   FUNC1(0, " -na   : disable audio");
   FUNC1(0, " -nv   : disable video");
   FUNC1(0, " -ns   : disable subtitles");
   FUNC1(0, " -nr   : always return an error code of 0 (even in case of failure)");
   FUNC1(0, " -ep   : enable packetization if data is not already packetized");
   FUNC1(0, " -c    : use the client i/o functions");
   FUNC1(0, " -vxx  : general verbosity level (replace xx with a number of \'v\')");
   FUNC1(0, " -vixx : verbosity specific to the input container");
   FUNC1(0, " -voxx : verbosity specific to the output container");
   FUNC1(0, " -h    : help");
   return 1;
}