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
struct connectdata {int dummy; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int FALSE ; 
 scalar_t__ FUNC0 (struct connectdata*) ; 
 scalar_t__ FUNC1 (struct connectdata*,int*) ; 

__attribute__((used)) static CURLcode FUNC2(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;

  *done = FALSE; /* default to false */

  /* Parse the custom request */
  result = FUNC0(conn);
  if(result)
    return result;

  result = FUNC1(conn, done);

  return result;
}