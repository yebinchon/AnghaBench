#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_3__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  suspend; } ;

/* Variables and functions */
 scalar_t__ VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_INIT_MAIN_SEM ; 
 int /*<<< orphan*/  VCOS_INIT_MSGQ ; 
 int /*<<< orphan*/  VCOS_INIT_NAMED_SEM ; 
 int /*<<< orphan*/  VCOS_INIT_PRINTF_LOCK ; 
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  _vcos_thread_current_key ; 
 int /*<<< orphan*/  current_thread_key_init ; 
 int /*<<< orphan*/  current_thread_key_once ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  printf_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ vcos_thread_main ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

VCOS_STATUS_T FUNC11(void)
{
   VCOS_STATUS_T st;
   uint32_t flags = 0;
   int pst;

   st = FUNC0();
   if (!FUNC10(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_NAMED_SEM;

#ifdef HAVE_MTRACE
   /* enable glibc memory debugging, if the environment
    * variable MALLOC_TRACE names a valid file.
    */
   mtrace();
#endif

#ifdef ANDROID
   st = vcos_mutex_create(&printf_lock, "printf");
   if (!vcos_verify(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_PRINTF_LOCK;
#endif

   st = FUNC7(&current_thread_key_once, current_thread_key_init);
   if (!FUNC10(st == VCOS_SUCCESS))
      goto end;

   /* Initialise a VCOS wrapper for the thread which called vcos_init. */
   st = FUNC8(&vcos_thread_main.suspend, NULL, 0);
   if (!FUNC10(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_MAIN_SEM;

   vcos_thread_main.thread = FUNC2();

   pst = FUNC3(_vcos_thread_current_key, &vcos_thread_main);
   if (!FUNC10(pst == 0))
   {
      st = VCOS_EINVAL;
      goto end;
   }

   st = FUNC5();
   if (!FUNC10(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_MSGQ;

   FUNC4();

end:
   if (st != VCOS_SUCCESS)
      FUNC9(flags);

   return st;
}