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
struct TYPE_3__ {int verify; void* key_file; void* cert_file; void* ca_file; } ;
typedef  TYPE_1__ TLSShared ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char*,char const*) ; 
 void* FUNC1 (char*) ; 
 char* FUNC2 (char const*,char) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static void FUNC4(TLSShared *c, const char *uri)
{
    char buf[1024];
    const char *p = FUNC2(uri, '?');
    if (!p)
        return;

    if (!c->ca_file && FUNC0(buf, sizeof(buf), "cafile", p))
        c->ca_file = FUNC1(buf);

    if (!c->verify && FUNC0(buf, sizeof(buf), "verify", p)) {
        char *endptr = NULL;
        c->verify = FUNC3(buf, &endptr, 10);
        if (buf == endptr)
            c->verify = 1;
    }

    if (!c->cert_file && FUNC0(buf, sizeof(buf), "cert", p))
        c->cert_file = FUNC1(buf);

    if (!c->key_file && FUNC0(buf, sizeof(buf), "key", p))
        c->key_file = FUNC1(buf);
}