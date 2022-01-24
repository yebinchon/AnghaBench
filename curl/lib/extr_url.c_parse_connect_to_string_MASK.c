#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ipv6_ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct connectdata {long remote_port; TYPE_2__ bits; TYPE_1__ host; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int FALSE ; 
 int TRUE ; 
 char* FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char const*,char**,int*) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (char const*,char*,size_t) ; 
 long FUNC6 (char const*,char**,int) ; 

__attribute__((used)) static CURLcode FUNC7(struct Curl_easy *data,
                                        struct connectdata *conn,
                                        const char *conn_to_host,
                                        char **host_result,
                                        int *port_result)
{
  CURLcode result = CURLE_OK;
  const char *ptr = conn_to_host;
  int host_match = FALSE;
  int port_match = FALSE;

  *host_result = NULL;
  *port_result = -1;

  if(*ptr == ':') {
    /* an empty hostname always matches */
    host_match = TRUE;
    ptr++;
  }
  else {
    /* check whether the URL's hostname matches */
    size_t hostname_to_match_len;
    char *hostname_to_match = FUNC0("%s%s%s",
                                      conn->bits.ipv6_ip ? "[" : "",
                                      conn->host.name,
                                      conn->bits.ipv6_ip ? "]" : "");
    if(!hostname_to_match)
      return CURLE_OUT_OF_MEMORY;
    hostname_to_match_len = FUNC4(hostname_to_match);
    host_match = FUNC5(ptr, hostname_to_match,
                                 hostname_to_match_len);
    FUNC1(hostname_to_match);
    ptr += hostname_to_match_len;

    host_match = host_match && *ptr == ':';
    ptr++;
  }

  if(host_match) {
    if(*ptr == ':') {
      /* an empty port always matches */
      port_match = TRUE;
      ptr++;
    }
    else {
      /* check whether the URL's port matches */
      char *ptr_next = FUNC3(ptr, ':');
      if(ptr_next) {
        char *endp = NULL;
        long port_to_match = FUNC6(ptr, &endp, 10);
        if((endp == ptr_next) && (port_to_match == conn->remote_port)) {
          port_match = TRUE;
          ptr = ptr_next + 1;
        }
      }
    }
  }

  if(host_match && port_match) {
    /* parse the hostname and port to connect to */
    result = FUNC2(data, ptr, host_result, port_result);
  }

  return result;
}