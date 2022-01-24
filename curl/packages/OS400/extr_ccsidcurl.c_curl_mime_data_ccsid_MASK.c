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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_CCSID ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

CURLcode
FUNC3(curl_mimepart *part,
                     const char *data, size_t datasize, unsigned int ccsid)

{
  char *s = (char *) NULL;
  CURLcode result;

  if(!data)
    return FUNC0(part, data, datasize);
  s = FUNC1(ASCII_CCSID, data, datasize, ccsid);
  if(!s)
    return CURLE_OUT_OF_MEMORY;

  result = FUNC0(part, s, datasize);
  FUNC2(s);
  return result;
}