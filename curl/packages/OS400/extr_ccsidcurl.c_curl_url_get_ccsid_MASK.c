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
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLUPart ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 scalar_t__ CURLUE_BAD_PARTPOINTER ; 
 scalar_t__ CURLUE_OK ; 
 scalar_t__ CURLUE_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,unsigned int) ; 
 char* FUNC1 (unsigned int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

CURLUcode
FUNC3(CURLU *handle, CURLUPart what, char **part,
                   unsigned int flags, unsigned int ccsid)

{
  char *s = (char *)NULL;
  CURLUcode result;

  if(!part)
    return CURLUE_BAD_PARTPOINTER;

  *part = (char *)NULL;
  result = FUNC0(handle, what, &s, flags);
  if(result == CURLUE_OK) {
    if(s) {
      *part = FUNC1(ccsid, s, -1, ASCII_CCSID);
      if(!*part)
        result = CURLUE_OUT_OF_MEMORY;
    }
  }
  if(s)
    FUNC2(s);
  return result;
}