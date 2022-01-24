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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  IMAP_STARTTLS ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC2(struct connectdata *conn)
{
  /* Send the STARTTLS command */
  CURLcode result = FUNC0(conn, "STARTTLS");

  if(!result)
    FUNC1(conn, IMAP_STARTTLS);

  return result;
}