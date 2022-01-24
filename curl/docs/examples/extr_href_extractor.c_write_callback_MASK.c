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

/* Variables and functions */
 int /*<<< orphan*/  HTML_VALUE_ENDED ; 
 int /*<<< orphan*/  FUNC0 (void*,char) ; 
 scalar_t__ FUNC1 (void*,char*,int) ; 
 scalar_t__ FUNC2 (void*,char*,int) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (void*) ; 
 size_t FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static size_t FUNC7(void *buffer, size_t size, size_t nmemb,
                             void *hsp)
{
  size_t realsize = size * nmemb, p;
  for(p = 0; p < realsize; p++) {
    FUNC0(hsp, ((char *)buffer)[p]);
    if(FUNC2(hsp, "a", 1))
      if(FUNC1(hsp, "href", 4))
        if(FUNC3(hsp, HTML_VALUE_ENDED)) {
          FUNC4(hsp)[FUNC5(hsp)] = '\0';
          FUNC6("%s\n", FUNC4(hsp));
        }
  }
  return realsize;
}