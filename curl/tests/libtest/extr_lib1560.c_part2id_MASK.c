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
typedef  int CURLUPart ;

/* Variables and functions */
 int CURLUPART_FRAGMENT ; 
 int CURLUPART_HOST ; 
 int CURLUPART_OPTIONS ; 
 int CURLUPART_PASSWORD ; 
 int CURLUPART_PATH ; 
 int CURLUPART_PORT ; 
 int CURLUPART_QUERY ; 
 int CURLUPART_SCHEME ; 
 int CURLUPART_URL ; 
 int CURLUPART_USER ; 
 int CURLUPART_ZONEID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static CURLUPart FUNC1(char *part)
{
  if(!FUNC0("url", part))
    return CURLUPART_URL;
  if(!FUNC0("scheme", part))
    return CURLUPART_SCHEME;
  if(!FUNC0("user", part))
    return CURLUPART_USER;
  if(!FUNC0("password", part))
    return CURLUPART_PASSWORD;
  if(!FUNC0("options", part))
    return CURLUPART_OPTIONS;
  if(!FUNC0("host", part))
    return CURLUPART_HOST;
  if(!FUNC0("port", part))
    return CURLUPART_PORT;
  if(!FUNC0("path", part))
    return CURLUPART_PATH;
  if(!FUNC0("query", part))
    return CURLUPART_QUERY;
  if(!FUNC0("fragment", part))
    return CURLUPART_FRAGMENT;
  if(!FUNC0("zoneid", part))
    return CURLUPART_ZONEID;
  return 9999; /* bad input => bad output */
}