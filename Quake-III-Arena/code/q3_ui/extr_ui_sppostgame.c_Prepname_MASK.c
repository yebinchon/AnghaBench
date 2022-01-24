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
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {char** placeNames; scalar_t__* clientNums; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 char* FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 TYPE_1__ postgameMenuInfo ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC6( int index ) {
	int		len;
	char	name[64];
	char	info[MAX_INFO_STRING];

	FUNC5( CS_PLAYERS + postgameMenuInfo.clientNums[index], info, MAX_INFO_STRING );
	FUNC2( name, FUNC0( info, "n" ), sizeof(name) );
	FUNC1( name );
	len = FUNC4( name );

	while( len && FUNC3( name ) > 256 ) {
		len--;
		name[len] = 0;
	}

	FUNC2( postgameMenuInfo.placeNames[index], name, sizeof(postgameMenuInfo.placeNames[index]) );
}