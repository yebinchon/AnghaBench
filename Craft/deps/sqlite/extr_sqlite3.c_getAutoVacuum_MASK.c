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
typedef  int u8 ;

/* Variables and functions */
 int BTREE_AUTOVACUUM_FULL ; 
 int BTREE_AUTOVACUUM_INCR ; 
 int BTREE_AUTOVACUUM_NONE ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *z){
  int i;
  if( 0==FUNC1(z, "none") ) return BTREE_AUTOVACUUM_NONE;
  if( 0==FUNC1(z, "full") ) return BTREE_AUTOVACUUM_FULL;
  if( 0==FUNC1(z, "incremental") ) return BTREE_AUTOVACUUM_INCR;
  i = FUNC0(z);
  return (u8)((i>=0&&i<=2)?i:0);
}