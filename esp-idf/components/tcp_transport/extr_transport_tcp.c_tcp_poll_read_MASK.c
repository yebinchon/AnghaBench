#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ sock; } ;
typedef  TYPE_1__ transport_tcp_t ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  sock_errno ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(esp_transport_handle_t t, int timeout_ms)
{
    transport_tcp_t *tcp = FUNC4(t);
    int ret = -1;
    fd_set readset;
    fd_set errset;
    FUNC3(&readset);
    FUNC3(&errset);
    FUNC2(tcp->sock, &readset);
    FUNC2(tcp->sock, &errset);
    struct timeval timeout;
    FUNC5(timeout_ms, &timeout);
    ret = FUNC7(tcp->sock + 1, &readset, NULL, &errset, &timeout);
    if (ret > 0 && FUNC1(tcp->sock, &errset)) {
        int sock_errno = 0;
        uint32_t optlen = sizeof(sock_errno);
        FUNC6(tcp->sock, SOL_SOCKET, SO_ERROR, &sock_errno, &optlen);
        FUNC0(TAG, "tcp_poll_read select error %d, errno = %s, fd = %d", sock_errno, FUNC8(sock_errno), tcp->sock);
        ret = -1;
    }
    return ret;
}