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
struct connectdata {TYPE_2__* data; } ;
struct TELNET {scalar_t__* us_preferred; scalar_t__* him_preferred; } ;
struct TYPE_3__ {scalar_t__ protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;

/* Variables and functions */
 int CURL_NTELOPTS ; 
 int CURL_TELOPT_ECHO ; 
 scalar_t__ CURL_YES ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct connectdata *conn)
{
  int i;
  struct TELNET *tn = (struct TELNET *) conn->data->req.protop;

  for(i = 0; i < CURL_NTELOPTS; i++) {
    if(i == CURL_TELOPT_ECHO)
      continue;

    if(tn->us_preferred[i] == CURL_YES)
      FUNC0(conn, i, CURL_YES);

    if(tn->him_preferred[i] == CURL_YES)
      FUNC1(conn, i, CURL_YES);
  }
}