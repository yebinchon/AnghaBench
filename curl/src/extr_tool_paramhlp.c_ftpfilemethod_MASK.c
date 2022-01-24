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
struct OperationConfig {int /*<<< orphan*/  global; } ;

/* Variables and functions */
 int CURLFTPMETHOD_MULTICWD ; 
 int CURLFTPMETHOD_NOCWD ; 
 int CURLFTPMETHOD_SINGLECWD ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC2(struct OperationConfig *config, const char *str)
{
  if(FUNC0("singlecwd", str))
    return CURLFTPMETHOD_SINGLECWD;
  if(FUNC0("nocwd", str))
    return CURLFTPMETHOD_NOCWD;
  if(FUNC0("multicwd", str))
    return CURLFTPMETHOD_MULTICWD;

  FUNC1(config->global, "unrecognized ftp file method '%s', using default\n",
        str);

  return CURLFTPMETHOD_MULTICWD;
}