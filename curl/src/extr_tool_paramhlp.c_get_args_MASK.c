#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct OperationConfig {TYPE_1__* global; scalar_t__ useragent; int /*<<< orphan*/  proxyuserpwd; int /*<<< orphan*/  userpwd; int /*<<< orphan*/  oauth_bearer; scalar_t__ next; } ;
struct TYPE_2__ {int /*<<< orphan*/  errors; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (char*,size_t const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 () ; 

CURLcode FUNC3(struct OperationConfig *config, const size_t i)
{
  CURLcode result = CURLE_OK;
  bool last = (config->next ? FALSE : TRUE);

  /* Check we have a password for the given host user */
  if(config->userpwd && !config->oauth_bearer) {
    result = FUNC0("host", i, last, &config->userpwd);
    if(result)
      return result;
  }

  /* Check we have a password for the given proxy user */
  if(config->proxyuserpwd) {
    result = FUNC0("proxy", i, last, &config->proxyuserpwd);
    if(result)
      return result;
  }

  /* Check we have a user agent */
  if(!config->useragent) {
    config->useragent = FUNC2();
    if(!config->useragent) {
      FUNC1(config->global->errors, "out of memory\n");
      result = CURLE_OUT_OF_MEMORY;
    }
  }

  return result;
}