#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  src_proto ;
typedef  int /*<<< orphan*/  src_host ;
typedef  int /*<<< orphan*/  src_auth ;
typedef  int /*<<< orphan*/  ref_proto ;
typedef  int /*<<< orphan*/  ref_host ;
typedef  int /*<<< orphan*/  ref_auth ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,char*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *src, const char *ref) {
    char src_proto[64];
    char ref_proto[64];
    char src_auth[256];
    char ref_auth[256];
    char src_host[256];
    char ref_host[256];
    int src_port=-1;
    int ref_port=-1;

    FUNC0(src_proto, sizeof(src_proto), src_auth, sizeof(src_auth), src_host, sizeof(src_host), &src_port, NULL, 0, src);
    FUNC0(ref_proto, sizeof(ref_proto), ref_auth, sizeof(ref_auth), ref_host, sizeof(ref_host), &ref_port, NULL, 0, ref);

    if (FUNC2(src) == 0) {
        return -1;
    } else if (FUNC2(src_auth) + 1 >= sizeof(src_auth) ||
        FUNC2(ref_auth) + 1 >= sizeof(ref_auth) ||
        FUNC2(src_host) + 1 >= sizeof(src_host) ||
        FUNC2(ref_host) + 1 >= sizeof(ref_host)) {
        return 0;
    } else if (FUNC1(src_proto, ref_proto) ||
               FUNC1(src_auth, ref_auth) ||
               FUNC1(src_host, ref_host) ||
               src_port != ref_port) {
        return 0;
    } else
        return 1;
}