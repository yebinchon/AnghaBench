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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  priv_key_pw; } ;
typedef  TYPE_1__ TLSContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(TLSContext *tls_ctxc, const char *uri)
{
    char buf[1024];
    const char *p = FUNC2(uri, '?');
    if (!p)
        return;

    if (!tls_ctxc->priv_key_pw && FUNC0(buf, sizeof(buf), "key_password", p))
        tls_ctxc->priv_key_pw = FUNC1(buf);
}