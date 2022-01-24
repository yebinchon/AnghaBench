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
struct digestdata {int dummy; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {struct digestdata digest; struct digestdata proxydigest; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_CONTENT_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct digestdata*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

CURLcode FUNC4(struct connectdata *conn,
                           bool proxy,
                           const char *header) /* rest of the *-authenticate:
                                                  header */
{
  struct Curl_easy *data = conn->data;

  /* Point to the correct struct with this */
  struct digestdata *digest;

  if(proxy) {
    digest = &data->state.proxydigest;
  }
  else {
    digest = &data->state.digest;
  }

  if(!FUNC2("Digest", header))
    return CURLE_BAD_CONTENT_ENCODING;

  header += FUNC3("Digest");
  while(*header && FUNC1(*header))
    header++;

  return FUNC0(header, digest);
}