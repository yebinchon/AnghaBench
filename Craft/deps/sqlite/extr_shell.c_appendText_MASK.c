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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(char *zIn, char const *zAppend, char quote){
  int len;
  int i;
  int nAppend = FUNC3(zAppend);
  int nIn = (zIn?FUNC3(zIn):0);

  len = nAppend+nIn+1;
  if( quote ){
    len += 2;
    for(i=0; i<nAppend; i++){
      if( zAppend[i]==quote ) len++;
    }
  }

  zIn = (char *)FUNC2(zIn, len);
  if( !zIn ){
    return 0;
  }

  if( quote ){
    char *zCsr = &zIn[nIn];
    *zCsr++ = quote;
    for(i=0; i<nAppend; i++){
      *zCsr++ = zAppend[i];
      if( zAppend[i]==quote ) *zCsr++ = quote;
    }
    *zCsr++ = quote;
    *zCsr++ = '\0';
    FUNC0( (zCsr-zIn)==len );
  }else{
    FUNC1(&zIn[nIn], zAppend, nAppend);
    zIn[len-1] = '\0';
  }

  return zIn;
}