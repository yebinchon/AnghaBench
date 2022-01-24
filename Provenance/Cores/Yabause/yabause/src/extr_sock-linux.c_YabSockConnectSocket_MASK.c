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
struct addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int YabSock ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 scalar_t__ FUNC3 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int FUNC8(const char *ip, int port, YabSock *sock)
{
   struct addrinfo *result = NULL, hints;
   char port_str[256];

   FUNC4(&hints, 0, sizeof(hints));

   hints.ai_family = AF_UNSPEC;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;

   FUNC7(port_str, "%d", port);
   if (FUNC3(ip, port_str, &hints, &result) != 0)
   {
      FUNC5("getaddrinfo");
      return -1;
   }

   // Create a Socket
   if ((sock[0] = FUNC6(result->ai_family, result->ai_socktype,
      result->ai_protocol)) == -1)
   {
      FUNC2(result);
      FUNC5("socket");
      return -1;
   }

   // Connect to the socket
   if (FUNC1(sock[0], result->ai_addr, (int)result->ai_addrlen) == -1)
   {
      FUNC5("connect");
      FUNC2(result);
      FUNC0(sock[0]);
      return -1;
   }

   FUNC2(result);
   return 0;
}