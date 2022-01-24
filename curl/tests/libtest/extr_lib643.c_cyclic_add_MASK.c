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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
  CURL *easy = FUNC1();
  curl_mime *mime = FUNC4(easy);
  curl_mimepart *part = FUNC2(mime);
  CURLcode a1 = FUNC5(part, mime);

  if(a1 == CURLE_BAD_FUNCTION_ARGUMENT) {
    curl_mime *submime = FUNC4(easy);
    curl_mimepart *subpart = FUNC2(submime);

    FUNC5(part, submime);
    a1 = FUNC5(subpart, mime);
  }

  FUNC3(mime);
  FUNC0(easy);
  if(a1 != CURLE_BAD_FUNCTION_ARGUMENT)
    /* that should have failed */
    return 1;

  return 0;
}