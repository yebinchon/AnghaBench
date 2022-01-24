#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  peer; } ;
typedef  TYPE_1__ SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_LIB_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static SSL_SESSION* FUNC4(void)
{
    SSL_SESSION *session;

    session = FUNC3(sizeof(SSL_SESSION));
    if (!session) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "no enough memory > (session)");
        goto failed1;
    }

    session->peer = FUNC1();
    if (!session->peer) {
       FUNC0(SSL_LIB_ERROR_LEVEL, "X509_new() return NULL");
       goto failed2;
    }

    return session;

failed2:
    FUNC2(session);
failed1:
    return NULL;
}