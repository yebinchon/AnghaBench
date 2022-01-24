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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 char* FUNC2 () ; 

void FUNC3( void *dllHandle ) {
  // bk001206 - verbose error reporting
  const char* err; // rb010123 - now const
  if ( !dllHandle )
  {
    FUNC0("Sys_UnloadDll(NULL)\n");
    return;
  }
  FUNC1( dllHandle );
  err = FUNC2();
  if ( err != NULL )
    FUNC0 ( "Sys_UnloadGame failed on dlclose: \"%s\"!\n", err );
}