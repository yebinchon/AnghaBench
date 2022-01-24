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
typedef  int /*<<< orphan*/  buffer ;
typedef  unsigned char* GR_PLAYER_TOKEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6( const char* string, GR_PLAYER_TOKEN key )
{
	unsigned char	buffer[1400];
	int len;
	FUNC2( string != NULL );

	len = FUNC5 (string) ;
	FUNC0( "SV_RankDecodePlayerKey: string length %d\n",len );
	
	FUNC4(key,0,sizeof(GR_PLAYER_TOKEN));
	FUNC4(buffer,0,sizeof(buffer));
	FUNC3( key, buffer, FUNC1( buffer, string, len ) );
}