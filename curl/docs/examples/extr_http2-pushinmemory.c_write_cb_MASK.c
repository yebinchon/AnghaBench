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
struct Memory {char* memory; size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 

__attribute__((used)) static size_t
FUNC3(void *contents, size_t size, size_t nmemb, void *userp)
{
  size_t realsize = size * nmemb;
  struct Memory *mem = (struct Memory *)userp;
  char *ptr = FUNC2(mem->memory, mem->size + realsize + 1);
  if(!ptr) {
    /* out of memory! */
    FUNC1("not enough memory (realloc returned NULL)\n");
    return 0;
  }

  mem->memory = ptr;
  FUNC0(&(mem->memory[mem->size]), contents, realsize);
  mem->size += realsize;
  mem->memory[mem->size] = 0;

  return realsize;
}