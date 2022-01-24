#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Curl_easy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * boundary; int /*<<< orphan*/ * lastpart; int /*<<< orphan*/ * firstpart; int /*<<< orphan*/ * parent; struct Curl_easy* easy; } ;
typedef  TYPE_1__ curl_mime ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Curl_easy*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  MIMESTATE_BEGIN ; 
 scalar_t__ MIME_RAND_BOUNDARY_CHARS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

curl_mime *FUNC5(struct Curl_easy *easy)
{
  curl_mime *mime;

  mime = (curl_mime *) FUNC2(sizeof(*mime));

  if(mime) {
    mime->easy = easy;
    mime->parent = NULL;
    mime->firstpart = NULL;
    mime->lastpart = NULL;

    FUNC3(mime->boundary, '-', 24);
    if(FUNC0(easy, (unsigned char *) &mime->boundary[24],
                     MIME_RAND_BOUNDARY_CHARS + 1)) {
      /* failed to get random separator, bail out */
      FUNC1(mime);
      return NULL;
    }
    FUNC4(&mime->state, MIMESTATE_BEGIN, NULL);
  }

  return mime;
}