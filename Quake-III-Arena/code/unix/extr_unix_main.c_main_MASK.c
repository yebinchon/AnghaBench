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
typedef  int /*<<< orphan*/  sysEvent_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FNDELAY ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_MSGLEN ; 
 int MAX_QUED_EVENTS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/ * eventQue ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  saved_euid ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/ * sys_packetReceived ; 

int FUNC15 ( int argc, char* argv[] )
{
  // int 	oldtime, newtime; // bk001204 - unused
  int   len, i;
  char  *cmdline;
  void FUNC0(const char *path);

  // go back to real user for config loads
  saved_euid = FUNC8();
  FUNC12(FUNC9());

  FUNC6( argc, argv );  // bk010104 - added this for support

  FUNC0(argv[0]);

  // merge the command line, this is kinda silly
  for (len = 1, i = 1; i < argc; i++)
    len += FUNC14(argv[i]) + 1;
  cmdline = FUNC10(len);
  *cmdline = 0;
  for (i = 1; i < argc; i++)
  {
    if (i > 1)
      FUNC13(cmdline, " ");
    FUNC13(cmdline, argv[i]);
  }

  // bk000306 - clear queues
  FUNC11( &eventQue[0], 0, MAX_QUED_EVENTS*sizeof(sysEvent_t) ); 
  FUNC11( &sys_packetReceived[0], 0, MAX_MSGLEN*sizeof(byte) );

  FUNC1(cmdline);
  FUNC3();

  FUNC5();

  FUNC7(0, F_SETFL, FUNC7 (0, F_GETFL, 0) | FNDELAY);
	
#ifdef DEDICATED
	// init here for dedicated, as we don't have GLimp_Init
	InitSig();
#endif

  while (1)
  {
#ifdef __linux__
    FUNC4();
#endif
    FUNC0 ();
  }
}