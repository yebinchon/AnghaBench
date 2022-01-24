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
struct TYPE_3__ {int sock; } ;
typedef  TYPE_1__ transport_tcp_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(esp_transport_handle_t t)
{
    transport_tcp_t *tcp = FUNC1(t);
    int ret = -1;
    if (tcp->sock >= 0) {
        ret = FUNC0(tcp->sock);
        tcp->sock = -1;
    }
    return ret;
}