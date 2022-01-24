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
struct TYPE_4__ {void* SendFifo; void* RecvFifo; int /*<<< orphan*/  bio; } ;
typedef  TYPE_1__ SSL_BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 

SSL_BIO *FUNC4()
{
	SSL_BIO *b = FUNC3(sizeof(SSL_BIO));

	b->bio = FUNC0(FUNC1());

	b->RecvFifo = FUNC2();
	b->SendFifo = FUNC2();

	return b;
}