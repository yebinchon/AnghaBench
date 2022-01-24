#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  ssl; int /*<<< orphan*/  RawOut; int /*<<< orphan*/  RawIn; int /*<<< orphan*/  SslInOut; } ;
typedef  TYPE_1__ SSL_PIPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(SSL_PIPE *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC1(s->SslInOut);
	FUNC1(s->RawIn);
	FUNC1(s->RawOut);

	FUNC3(s->ssl);
	FUNC2(s->ssl_ctx);

	FUNC0(s);
}