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
struct curl_slist {char* data; struct curl_slist* next; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_SSL_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct curl_slist**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
  CURL *curl = FUNC2();
  struct curl_slist *engines = NULL;

  /* Get the list of engines */
  FUNC1(curl, CURLINFO_SSL_ENGINES, &engines);

  FUNC5("Build-time engines:");
  if(engines) {
    for(; engines; engines = engines->next)
      FUNC4("  %s\n", engines->data);
  }
  else {
    FUNC5("  <none>");
  }

  /* Cleanup the list of engines */
  FUNC3(engines);
  FUNC0(curl);
}