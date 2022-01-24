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
typedef  scalar_t__ YYCODETYPE ;

/* Variables and functions */
 scalar_t__ YYNOCODE ; 
 int YY_ACTTAB_COUNT ; 
 int YY_REDUCE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* yy_action ; 
 int* yy_default ; 
 scalar_t__* yy_lookahead ; 
 int* yy_reduce_ofst ; 

__attribute__((used)) static int FUNC1(
  int stateno,              /* Current state number */
  YYCODETYPE iLookAhead     /* The look-ahead token */
){
  int i;
#ifdef YYERRORSYMBOL
  if( stateno>YY_REDUCE_COUNT ){
    return yy_default[stateno];
  }
#else
  FUNC0( stateno<=YY_REDUCE_COUNT );
#endif
  i = yy_reduce_ofst[stateno];
  FUNC0( iLookAhead!=YYNOCODE );
  i += iLookAhead;
#ifdef YYERRORSYMBOL
  if( i<0 || i>=YY_ACTTAB_COUNT || yy_lookahead[i]!=iLookAhead ){
    return yy_default[stateno];
  }
#else
  FUNC0( i>=0 && i<YY_ACTTAB_COUNT );
  FUNC0( yy_lookahead[i]==iLookAhead );
#endif
  return yy_action[i];
}