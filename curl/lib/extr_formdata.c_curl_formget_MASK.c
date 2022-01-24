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
struct curl_httppost {int dummy; } ;
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  size_t (* curl_formget_callback ) (void*,char*,size_t) ;
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_READ_ERROR ; 
#define  CURL_READFUNC_ABORT 129 
#define  CURL_READFUNC_PAUSE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct curl_httppost*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MIMESTRATEGY_FORM ; 

int FUNC5(struct curl_httppost *form, void *arg,
                 curl_formget_callback append)
{
  CURLcode result;
  curl_mimepart toppart;

  FUNC2(&toppart, NULL); /* default form is empty */
  result = FUNC0(NULL, &toppart, form, NULL);
  if(!result)
    result = FUNC3(&toppart, "multipart/form-data",
                                       NULL, MIMESTRATEGY_FORM);

  while(!result) {
    char buffer[8192];
    size_t nread = FUNC4(buffer, 1, sizeof(buffer), &toppart);

    if(!nread)
      break;

    switch(nread) {
    default:
      if(append(arg, buffer, nread) != nread)
        result = CURLE_READ_ERROR;
      break;
    case CURL_READFUNC_ABORT:
    case CURL_READFUNC_PAUSE:
      break;
    }
  }

  FUNC1(&toppart);
  return (int) result;
}