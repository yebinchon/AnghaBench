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
struct hostent {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int getaddrinfo ;
typedef  int /*<<< orphan*/  freeaddrinfo ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char const*) ; 
 char* ipv_inuse ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ use_ipv6 ; 
 int /*<<< orphan*/  win32_cleanup ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char *argv[])
{
  int arg = 1;
  const char *host = NULL;
  int rc = 0;

  while(argc>arg) {
    if(!FUNC7("--version", argv[arg])) {
      FUNC3("resolve IPv4%s\n",
#ifdef ENABLE_IPV6
             "/IPv6"
#else
             ""
#endif
             );
      return 0;
    }
    else if(!FUNC7("--ipv6", argv[arg])) {
      ipv_inuse = "IPv6";
      use_ipv6 = TRUE;
      arg++;
    }
    else if(!FUNC7("--ipv4", argv[arg])) {
      /* for completeness, we support this option as well */
      ipv_inuse = "IPv4";
      use_ipv6 = FALSE;
      arg++;
    }
    else {
      host = argv[arg++];
    }
  }
  if(!host) {
    FUNC4("Usage: resolve [option] <host>\n"
         " --version\n"
         " --ipv4"
#ifdef ENABLE_IPV6
         "\n --ipv6"
#endif
         );
    return 1;
  }

#ifdef WIN32
  win32_init();
  atexit(win32_cleanup);
#endif

#ifdef ENABLE_IPV6
  if(use_ipv6) {
    /* Check that the system has IPv6 enabled before checking the resolver */
    curl_socket_t s = socket(PF_INET6, SOCK_DGRAM, 0);
    if(s == CURL_SOCKET_BAD)
      /* an IPv6 address was requested and we can't get/use one */
      rc = -1;
    else {
      sclose(s);
    }
  }

  if(rc == 0) {
    /* getaddrinfo() resolve */
    struct addrinfo *ai;
    struct addrinfo hints;

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = use_ipv6 ? PF_INET6 : PF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_CANONNAME;
    /* Use parenthesis around functions to stop them from being replaced by
       the macro in memdebug.h */
    rc = (getaddrinfo)(host, "80", &hints, &ai);
    if(rc == 0)
      (freeaddrinfo)(ai);
  }
#else
  if(use_ipv6) {
    FUNC4("IPv6 support has been disabled in this program");
    return 1;
  }
  else {
    /* gethostbyname() resolve */
    struct hostent *he;

    he = FUNC1(host);

    rc = !he;
  }
#endif

  if(rc)
    FUNC3("Resolving %s '%s' didn't work\n", ipv_inuse, host);

  return !!rc;
}