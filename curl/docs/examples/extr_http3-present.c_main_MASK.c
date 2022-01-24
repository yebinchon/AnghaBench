#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int features; } ;
typedef  TYPE_1__ curl_version_info_data ;

/* Variables and functions */
 int /*<<< orphan*/  CURLVERSION_NOW ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int CURL_VERSION_ALTSVC ; 
 int CURL_VERSION_HTTP2 ; 
 int CURL_VERSION_HTTP3 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void)
{
  curl_version_info_data *ver;

  FUNC1(CURL_GLOBAL_ALL);

  ver = FUNC2(CURLVERSION_NOW);
  if(ver->features & CURL_VERSION_HTTP2)
    FUNC3("HTTP/2 support is present\n");

  if(ver->features & CURL_VERSION_HTTP3)
    FUNC3("HTTP/3 support is present\n");

  if(ver->features & CURL_VERSION_ALTSVC)
    FUNC3("Alt-svc support is present\n");

  FUNC0();
  return 0;
}