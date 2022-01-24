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
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_1__ esp_tls_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC1(esp_tls_t *tls, char *data, size_t datalen)
{
    return FUNC0(tls->sockfd, data, datalen, 0);
}