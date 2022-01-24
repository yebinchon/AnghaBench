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
struct initurl {long url; long share; int threadno; } ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_SHARE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int URL_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 long write_db ; 

__attribute__((used)) static void *FUNC5(void *ptr)
{
  struct initurl *u = (struct initurl *)ptr;
  int i;

  for(i = 0; i < URL_ITERATIONS; i++) {
    CURL *curl = FUNC1();
    FUNC3(curl, CURLOPT_URL, u->url);
    FUNC3(curl, CURLOPT_VERBOSE, 0L);
    FUNC3(curl, CURLOPT_SHARE, u->share);
    FUNC3(curl, CURLOPT_WRITEFUNCTION, write_db);
    FUNC2(curl); /* ignores error */
    FUNC0(curl);
    FUNC4(stderr, "Thread %d transfer %d\n", u->threadno, i);
  }

  return NULL;
}