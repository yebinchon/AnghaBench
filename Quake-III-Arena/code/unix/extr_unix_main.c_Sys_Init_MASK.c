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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  Sys_In_Restart_f ; 

void FUNC4(void)
{
  FUNC0 ("in_restart", Sys_In_Restart_f);

#if defined __linux__
#if defined __i386__
  Cvar_Set( "arch", "linux i386" );
#elif defined __alpha__
  Cvar_Set( "arch", "linux alpha" );
#elif defined __sparc__
  Cvar_Set( "arch", "linux sparc" );
#elif defined __FreeBSD__

#if defined __i386__ // FreeBSD
  Cvar_Set( "arch", "freebsd i386" );
#elif defined __alpha__
  Cvar_Set( "arch", "freebsd alpha" );
#else
  Cvar_Set( "arch", "freebsd unknown" );
#endif // FreeBSD

#else
  FUNC1( "arch", "linux unknown" );
#endif
#elif defined __sun__
#if defined __i386__
  Cvar_Set( "arch", "solaris x86" );
#elif defined __sparc__
  Cvar_Set( "arch", "solaris sparc" );
#else
  Cvar_Set( "arch", "solaris unknown" );
#endif
#elif defined __sgi__
#if defined __mips__
  Cvar_Set( "arch", "sgi mips" );
#else
  Cvar_Set( "arch", "sgi unknown" );
#endif
#else
  Cvar_Set( "arch", "unknown" );
#endif

  FUNC1( "username", FUNC3() );

  FUNC2();

}