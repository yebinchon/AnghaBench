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
struct dohresponse {size_t size; int /*<<< orphan*/ * memory; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t DOH_MAX_RESPONSE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static size_t
FUNC2(void *contents, size_t size, size_t nmemb, void *userp)
{
  size_t realsize = size * nmemb;
  struct dohresponse *mem = (struct dohresponse *)userp;

  if((mem->size + realsize) > DOH_MAX_RESPONSE_SIZE)
    /* suspiciously much for us */
    return 0;

  mem->memory = FUNC0(mem->memory, mem->size + realsize);
  if(!mem->memory)
    /* out of memory! */
    return 0;

  FUNC1(&(mem->memory[mem->size]), contents, realsize);
  mem->size += realsize;

  return realsize;
}