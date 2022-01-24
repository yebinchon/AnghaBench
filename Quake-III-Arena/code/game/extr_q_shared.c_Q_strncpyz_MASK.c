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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

void FUNC2( char *dest, const char *src, int destsize ) {
  // bk001129 - also NULL dest
  if ( !dest ) {
    FUNC0( ERR_FATAL, "Q_strncpyz: NULL dest" );
  }
	if ( !src ) {
		FUNC0( ERR_FATAL, "Q_strncpyz: NULL src" );
	}
	if ( destsize < 1 ) {
		FUNC0(ERR_FATAL,"Q_strncpyz: destsize < 1" ); 
	}

	FUNC1( dest, src, destsize-1 );
  dest[destsize-1] = 0;
}