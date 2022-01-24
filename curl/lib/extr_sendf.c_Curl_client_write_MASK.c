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
struct TYPE_4__ {char transfertype; } ;
struct TYPE_5__ {TYPE_1__ ftpc; } ;
struct connectdata {TYPE_2__ proto; TYPE_3__* handler; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
struct TYPE_6__ {int protocol; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int CLIENTWRITE_BODY ; 
 scalar_t__ FUNC0 (struct Curl_easy*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PROTO_FAMILY_FTP ; 
 scalar_t__ FUNC2 (struct connectdata*,int,char*,size_t) ; 
 size_t FUNC3 (struct Curl_easy*,char*,size_t) ; 
 size_t FUNC4 (char*) ; 

CURLcode FUNC5(struct connectdata *conn,
                           int type,
                           char *ptr,
                           size_t len)
{
  struct Curl_easy *data = conn->data;

  if(0 == len)
    len = FUNC4(ptr);

  FUNC1(type <= 3);

  /* FTP data may need conversion. */
  if((type & CLIENTWRITE_BODY) &&
    (conn->handler->protocol & PROTO_FAMILY_FTP) &&
    conn->proto.ftpc.transfertype == 'A') {
    /* convert from the network encoding */
    CURLcode result = FUNC0(data, ptr, len);
    /* Curl_convert_from_network calls failf if unsuccessful */
    if(result)
      return result;

#ifdef CURL_DO_LINEEND_CONV
    /* convert end-of-line markers */
    len = convert_lineends(data, ptr, len);
#endif /* CURL_DO_LINEEND_CONV */
    }

  return FUNC2(conn, type, ptr, len);
}