#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_THREAD_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_2__ {int align_size; int iters; scalar_t__ verify; void* server_message_quota; void* client_message_quota; void* blocksize; void* server_align; void* client_align; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_ERROR ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int VCOS_AFFINITY_CPU1 ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  VCOS_LOG_INFO ; 
 int /*<<< orphan*/  VCOS_LOG_TRACE ; 
 int /*<<< orphan*/  VCOS_START ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* func_data_test_end ; 
 void* func_data_test_start ; 
 int /*<<< orphan*/  g_mutex ; 
 TYPE_1__ g_params ; 
 int /*<<< orphan*/  g_server_reply ; 
 char* g_servname ; 
 int /*<<< orphan*/  g_shutdown ; 
 void* g_timeout_ms ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  vchiq_test_server ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,void*,void*,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ want_echo ; 

__attribute__((used)) static int FUNC21(int argc, char **argv)
{
   VCHIQ_STATUS_T status;
   int run_bulk_test = 0;
   int run_ctrl_test = 0;
   int run_functional_test = 0;
   int run_ping_test = 0;
   int run_signal_test = 0;
   int verbose = 0;
   int argn;

   argn = 1;
   while ((argn < argc) && (argv[argn][0] == '-'))
   {
      const char *arg = argv[argn++];
      if (FUNC7(arg, "-s") == 0)
      {
         g_servname = argv[argn++];
         if (!g_servname || (FUNC8(g_servname) != 4))
         {
            FUNC9();
         }
      }
      else if (FUNC6(arg, "-a") == 0)
      {
         g_params.align_size = (FUNC7(arg, "-A") == 0) ? 4096 : 32;
         g_params.client_align = FUNC0(argv[argn++]);
         g_params.server_align = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-b") == 0)
      {
         run_bulk_test = 1;
         g_params.blocksize = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-c") == 0)
      {
         run_ctrl_test = 1;
         g_params.blocksize = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-e") == 0)
      {
         want_echo = 0;
      }
      else if (FUNC7(arg, "-f") == 0)
      {
         run_functional_test = 1;
      }
      else if (FUNC7(arg, "-h") == 0)
      {
         FUNC9();
      }
      else if (FUNC7(arg, "-i") == 0)
      {
         run_signal_test = 1;
      }
      else if (FUNC7(arg, "-m") == 0)
      {
         g_params.client_message_quota = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-M") == 0)
      {
         g_params.server_message_quota = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-p") == 0)
      {
         run_ping_test = 1;
         g_params.iters = 1000;
      }
      else if (FUNC7(arg, "-q") == 0)
      {
         /* coverity[missing_lock : FALSE] - g_server_reply is not used for mutual exclusion */
         g_params.verify = 0;
      }
#ifdef __linux__
      else if (FUNC7(arg, "-r") == 0)
      {
         int reserve, delay;
         if (argn+1 < argc)
         {
            reserve = FUNC0(argv[argn++]);
            delay = FUNC0(argv[argn++]);
            FUNC5(reserve, delay);
            FUNC2(0);
         }
         else
         {
            FUNC4("not enough arguments (-r reserve delay)\n");
            FUNC2(-1);
         }
      }
#endif
#ifdef ANDROID
      else if (strcmp(arg, "-K") == 0)
      {
         if (argn < argc)
            g_timeout_ms = atoi(argv[argn++]);
         else
         {
            printf("not enough arguments (-K timeout)\n");
            exit(-1);
         }
      }
#endif
      else if (FUNC7(arg, "-t") == 0)
      {
         FUNC1();
         FUNC2(0);
      }
      else if (FUNC7(arg, "-v") == 0)
      {
         verbose = 1;
      }
      else if (FUNC7(arg, "-S") == 0)
      {
         func_data_test_start = FUNC0(argv[argn++]);
      }
      else if (FUNC7(arg, "-E") == 0)
      {
         func_data_test_end = FUNC0(argv[argn++]);
      }
      else
      {
         FUNC4("* unknown option '%s'\n", arg);
         FUNC9();
      }
   }

   if ((run_ctrl_test + run_bulk_test + run_functional_test + run_ping_test + run_signal_test) != 1)
      FUNC9();

   if (argn < argc)
   {
      g_params.iters = FUNC0(argv[argn++]);
      if (argn != argc)
      {
         FUNC9();
      }
   }

   FUNC18(VCOS_LOG_CATEGORY, verbose ? VCOS_LOG_TRACE : VCOS_LOG_INFO);
   FUNC17("vchiq_test", VCOS_LOG_CATEGORY);

#ifdef VCHIQ_LOCAL
   {
      static VCOS_THREAD_T server_task;
      void          *pointer = NULL;
      int stack_size = 4096;

#if VCOS_CAN_SET_STACK_ADDR
      pointer = malloc(stack_size);
      vcos_demand(pointer);
#endif
      vcos_thread_create_classic(&server_task, "vchiq_test server", vchiq_test_server, (void *)0, pointer, stack_size,
                                 10 | VCOS_AFFINITY_CPU1, 20, VCOS_START);
   }
#endif

   FUNC16(&g_server_reply, "g_server_reply");
   FUNC16(&g_shutdown, "g_shutdown");
   FUNC19(&g_mutex, "g_mutex");

   status = VCHIQ_ERROR;

   if (run_bulk_test)
      status = FUNC10();
   else if (run_ctrl_test)
      status = FUNC11();
   else if (run_functional_test)
      status = FUNC12();
   else if (run_ping_test)
      status = FUNC13();
   else if (run_signal_test)
      status = FUNC14();

   return (status == VCHIQ_SUCCESS) ? 0 : -1;
}