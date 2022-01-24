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
typedef  int /*<<< orphan*/  CURLUcode ;
typedef  int /*<<< orphan*/  CURLUPart ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 int /*<<< orphan*/  CURLUE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

CURLUcode
FUNC3(CURLU *handle, CURLUPart what, const char *part,
                   unsigned int flags, unsigned int ccsid)

{
  char *s = (char *)NULL;
  CURLUcode result;

  if(part) {
    s = FUNC1(ASCII_CCSID, part, -1, ccsid);
    if(!s)
      return CURLUE_OUT_OF_MEMORY;
  }
  result = FUNC0(handle, what, s, flags);
  if(s)
    FUNC2(s);
  return result;
}