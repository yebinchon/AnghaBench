#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** protocols; } ;
typedef  TYPE_1__ curl_version_info_data ;

/* Variables and functions */
 int /*<<< orphan*/  CURLVERSION_NOW ; 
 int PARAM_LIBCURL_UNSUPPORTED_PROTOCOL ; 
 int PARAM_OK ; 
 int PARAM_REQUIRES_PARAMETER ; 
 scalar_t__ FUNC0 (char const* const,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(const char *str)
{
  const char * const *pp;
  const curl_version_info_data *curlinfo = FUNC1(CURLVERSION_NOW);
  if(!str)
    return PARAM_REQUIRES_PARAMETER;
  for(pp = curlinfo->protocols; *pp; pp++) {
    if(FUNC0(*pp, str))
      return PARAM_OK;
  }
  return PARAM_LIBCURL_UNSUPPORTED_PROTOCOL;
}