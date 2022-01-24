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
typedef  int /*<<< orphan*/  env ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static
char *FUNC3(const char *variable)
{
#if defined(_WIN32_WCE) || defined(CURL_WINDOWS_APP)
  (void)variable;
  return NULL;
#else
#ifdef WIN32
  char env[4096];
  char *temp = getenv(variable);
  env[0] = '\0';
  if(temp != NULL)
    ExpandEnvironmentStringsA(temp, env, sizeof(env));
  return (env[0] != '\0')?strdup(env):NULL;
#else
  char *env = FUNC1(variable);
  return (env && env[0])?FUNC2(env):NULL;
#endif
#endif
}