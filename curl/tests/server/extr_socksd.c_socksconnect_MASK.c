#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {TYPE_3__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa; TYPE_2__ sa4; } ;
typedef  TYPE_1__ srvr_sockaddr_union_t ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static curl_socket_t FUNC7(unsigned short connectport,
                                  const char *connectaddr)
{
  int rc;
  srvr_sockaddr_union_t me;
  curl_socket_t sock = FUNC5(AF_INET, SOCK_STREAM, 0);
  if(sock == CURL_SOCKET_BAD)
    return CURL_SOCKET_BAD;
  FUNC4(&me.sa4, 0, sizeof(me.sa4));
  me.sa4.sin_family = AF_INET;
  me.sa4.sin_port = FUNC2(connectport);
  me.sa4.sin_addr.s_addr = INADDR_ANY;
  FUNC0(AF_INET, connectaddr, &me.sa4.sin_addr);

  rc = FUNC1(sock, &me.sa, sizeof(me.sa4));

  if(rc) {
    int error = SOCKERRNO;
    FUNC3("Error connecting to %s:%hu: (%d) %s",
           connectaddr, connectport, error, FUNC6(error));
    return CURL_SOCKET_BAD;
  }
  FUNC3("Connected fine to %s:%d", connectaddr, connectport);
  return sock;
}