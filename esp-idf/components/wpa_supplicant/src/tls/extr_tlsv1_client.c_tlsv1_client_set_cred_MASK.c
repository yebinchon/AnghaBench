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
struct tlsv1_credentials {int dummy; } ;
struct tlsv1_client {struct tlsv1_credentials* cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tlsv1_credentials*) ; 

int FUNC1(struct tlsv1_client *conn,
			  struct tlsv1_credentials *cred)
{
	FUNC0(conn->cred);
	conn->cred = cred;
	return 0;
}