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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(
  void *NotUsed,
  int nKey1, const void *pKey1,
  int nKey2, const void *pKey2
){
  int r = FUNC1(
      (const char *)pKey1, (const char *)pKey2, (nKey1<nKey2)?nKey1:nKey2);
  FUNC0(NotUsed);
  if( 0==r ){
    r = nKey1-nKey2;
  }
  return r;
}