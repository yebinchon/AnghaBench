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
struct Curl_easy {TYPE_1__* multi_easy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn_cache; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_FUNCTION_ARGUMENT ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct Curl_easy*) ; 

CURLcode FUNC2(struct Curl_easy *data)
{
  /* Verify that we got an easy handle we can work with. */
  if(!FUNC0(data))
    return CURLE_BAD_FUNCTION_ARGUMENT;

  if(data->multi_easy) {
    /* Use the common function to keep connections alive. */
    return FUNC1(&data->multi_easy->conn_cache, data);
  }
  else {
    /* No connections, so just return success */
    return CURLE_OK;
  }
}