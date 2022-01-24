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
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static u8 FUNC5(const char *z, int omitFull, int dflt){
                             /* 123456789 123456789 */
  static const char zText[] = "onoffalseyestruefull";
  static const u8 iOffset[] = {0, 1, 2, 4, 9, 12, 16};
  static const u8 iLength[] = {2, 2, 3, 5, 3, 4, 4};
  static const u8 iValue[] =  {1, 0, 0, 0, 1, 1, 2};
  int i, n;
  if( FUNC2(*z) ){
    return (u8)FUNC1(z);
  }
  n = FUNC4(z);
  for(i=0; i<FUNC0(iLength)-omitFull; i++){
    if( iLength[i]==n && FUNC3(&zText[iOffset[i]],z,n)==0 ){
      return iValue[i];
    }
  }
  return dflt;
}