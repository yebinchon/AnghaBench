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
struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {scalar_t__ share; } ;
struct Curl_dns_entry {int /*<<< orphan*/  inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 struct Curl_dns_entry* FUNC2 (struct connectdata*,char const*,int) ; 

struct Curl_dns_entry *
FUNC3(struct connectdata *conn,
                const char *hostname,
                int port)
{
  struct Curl_easy *data = conn->data;
  struct Curl_dns_entry *dns = NULL;

  if(data->share)
    FUNC0(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  dns = FUNC2(conn, hostname, port);

  if(dns)
    dns->inuse++; /* we use it! */

  if(data->share)
    FUNC1(data, CURL_LOCK_DATA_DNS);

  return dns;
}