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
typedef  int u16 ;

/* Variables and functions */
 int TK_EQ ; 
 int TK_GE ; 
 int TK_GT ; 
 int TK_IN ; 
 int TK_ISNULL ; 
 int TK_LE ; 
 int TK_LT ; 
 int WO_EQ ; 
 int WO_GE ; 
 int WO_GT ; 
 int WO_IN ; 
 int WO_ISNULL ; 
 int WO_LE ; 
 int WO_LT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static u16 FUNC2(int op){
  u16 c;
  FUNC1( FUNC0(op) );
  if( op==TK_IN ){
    c = WO_IN;
  }else if( op==TK_ISNULL ){
    c = WO_ISNULL;
  }else{
    FUNC1( (WO_EQ<<(op-TK_EQ)) < 0x7fff );
    c = (u16)(WO_EQ<<(op-TK_EQ));
  }
  FUNC1( op!=TK_ISNULL || c==WO_ISNULL );
  FUNC1( op!=TK_IN || c==WO_IN );
  FUNC1( op!=TK_EQ || c==WO_EQ );
  FUNC1( op!=TK_LT || c==WO_LT );
  FUNC1( op!=TK_LE || c==WO_LE );
  FUNC1( op!=TK_GT || c==WO_GT );
  FUNC1( op!=TK_GE || c==WO_GE );
  return c;
}