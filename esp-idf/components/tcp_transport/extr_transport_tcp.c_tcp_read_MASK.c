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
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ transport_tcp_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(esp_transport_handle_t t, char *buffer, int len, int timeout_ms)
{
    transport_tcp_t *tcp = FUNC0(t);
    int poll = -1;
    if ((poll = FUNC1(t, timeout_ms)) <= 0) {
        return poll;
    }
    int read_len = FUNC2(tcp->sock, buffer, len);
    if (read_len == 0) {
        return -1;
    }
    return read_len;
}