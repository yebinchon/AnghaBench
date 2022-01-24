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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static char *FUNC6(char *zPrompt, FILE *in, int csvFlag){
  char *zLine;
  int nLine;
  int n;
  int inQuote = 0;

  if( zPrompt && *zPrompt ){
    FUNC4("%s",zPrompt);
    FUNC0(stdout);
  }
  nLine = 100;
  zLine = FUNC3( nLine );
  if( zLine==0 ) return 0;
  n = 0;
  while( 1 ){
    if( n+100>nLine ){
      nLine = nLine*2 + 100;
      zLine = FUNC5(zLine, nLine);
      if( zLine==0 ) return 0;
    }
    if( FUNC1(&zLine[n], nLine - n, in)==0 ){
      if( n==0 ){
        FUNC2(zLine);
        return 0;
      }
      zLine[n] = 0;
      break;
    }
    while( zLine[n] ){
      if( zLine[n]=='"' ) inQuote = !inQuote;
      n++;
    }
    if( n>0 && zLine[n-1]=='\n' && (!inQuote || !csvFlag) ){
      n--;
      if( n>0 && zLine[n-1]=='\r' ) n--;
      zLine[n] = 0;
      break;
    }
  }
  zLine = FUNC5( zLine, n+1 );
  return zLine;
}