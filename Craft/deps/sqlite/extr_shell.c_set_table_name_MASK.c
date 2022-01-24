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
struct callback_data {char* zDestTable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(struct callback_data *p, const char *zName){
  int i, n;
  int needQuote;
  char *z;

  if( p->zDestTable ){
    FUNC2(p->zDestTable);
    p->zDestTable = 0;
  }
  if( zName==0 ) return;
  needQuote = !FUNC4((unsigned char)*zName) && *zName!='_';
  for(i=n=0; zName[i]; i++, n++){
    if( !FUNC3((unsigned char)zName[i]) && zName[i]!='_' ){
      needQuote = 1;
      if( zName[i]=='\'' ) n++;
    }
  }
  if( needQuote ) n += 2;
  z = p->zDestTable = FUNC5( n+1 );
  if( z==0 ){
    FUNC1(stderr,"Error: out of memory\n");
    FUNC0(1);
  }
  n = 0;
  if( needQuote ) z[n++] = '\'';
  for(i=0; zName[i]; i++){
    z[n++] = zName[i];
    if( zName[i]=='\'' ) z[n++] = '\'';
  }
  if( needQuote ) z[n++] = '\'';
  z[n] = 0;
}