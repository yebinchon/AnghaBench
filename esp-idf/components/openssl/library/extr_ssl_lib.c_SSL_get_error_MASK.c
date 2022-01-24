#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int shutdown; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int SSL_ERROR_NONE ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int SSL_ERROR_ZERO_RETURN ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const SSL *ssl, int ret_code)
{
    int ret = SSL_ERROR_SYSCALL;

    FUNC0(ssl);

    if (ret_code > 0)
        ret = SSL_ERROR_NONE;
    else if (ret_code < 0)
    {
        if (FUNC1(ssl))
            ret = SSL_ERROR_WANT_READ;
        else if (FUNC2(ssl))
            ret = SSL_ERROR_WANT_WRITE;
        else
            ret = SSL_ERROR_SYSCALL; //unknown
    }
    else // ret_code == 0
    {
        if (ssl->shutdown & SSL_RECEIVED_SHUTDOWN)
            ret = SSL_ERROR_ZERO_RETURN;
        else
            ret = SSL_ERROR_SYSCALL;
    }

    return ret;
}