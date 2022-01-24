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
typedef  int curl_sslbackend ;
struct TYPE_3__ {char* name; int id; } ;
typedef  TYPE_1__ curl_ssl_backend ;
typedef  scalar_t__ CURLsslset ;

/* Variables and functions */
 scalar_t__ CURLSSLSET_OK ; 
 scalar_t__ CURLSSLSET_UNKNOWN_BACKEND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int,char const*,TYPE_1__ const***) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int FUNC8(int argc, char **argv)
{
  const char *name = argc > 1 ? argv[1] : "openssl";
  CURLsslset result;

  if(!FUNC7("list", name)) {
    const curl_ssl_backend **list;
    int i;

    result = FUNC2(-1, NULL, &list);
    FUNC0(result == CURLSSLSET_UNKNOWN_BACKEND);

    for(i = 0; list[i]; i++)
      FUNC6("SSL backend #%d: '%s' (ID: %d)\n",
             i, list[i]->name, list[i]->id);

    return 0;
  }
  else if(FUNC5((int)(unsigned char)*name)) {
    int id = FUNC1(name);

    result = FUNC2((curl_sslbackend)id, NULL, NULL);
  }
  else
    result = FUNC2(-1, name, NULL);

  if(result == CURLSSLSET_UNKNOWN_BACKEND) {
    FUNC4(stderr, "Unknown SSL backend id: %s\n", name);
    return 1;
  }

  FUNC0(result == CURLSSLSET_OK);

  FUNC6("Version with SSL backend '%s':\n\n\t%s\n", name, FUNC3());

  return 0;
}