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
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static CURLcode FUNC4(curl_mimepart *part, const char *name, size_t len)
{
  char *zname;
  CURLcode res;

  if(!name || !len)
    return FUNC0(part, name);
  zname = FUNC2(len + 1);
  if(!zname)
    return CURLE_OUT_OF_MEMORY;
  FUNC3(zname, name, len);
  zname[len] = '\0';
  res = FUNC0(part, zname);
  FUNC1(zname);
  return res;
}