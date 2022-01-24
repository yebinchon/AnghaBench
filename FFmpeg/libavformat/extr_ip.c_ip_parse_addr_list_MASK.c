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
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_storage {int /*<<< orphan*/  member_0; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  source_addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (void**,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,char*) ; 
 struct addrinfo* FUNC4 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *log_ctx, const char *buf,
                              struct sockaddr_storage **address_list_ptr,
                              int *address_list_size_ptr)
{
    struct addrinfo *ai = NULL;

    /* Resolve all of the IPs */

    while (buf && buf[0]) {
        char* host = FUNC3(&buf, ",");
        if (!host)
            return FUNC0(ENOMEM);

        ai = FUNC4(log_ctx, host, 0, SOCK_DGRAM, AF_UNSPEC, 0);
        FUNC2(&host);

        if (ai) {
            struct sockaddr_storage source_addr = {0};
            FUNC6(&source_addr, ai->ai_addr, ai->ai_addrlen);
            FUNC5(ai);
            FUNC1((void **)address_list_ptr, address_list_size_ptr, sizeof(source_addr), (uint8_t *)&source_addr);
            if (!*address_list_ptr)
                return FUNC0(ENOMEM);
        } else {
            return FUNC0(EINVAL);
        }

        if (*buf)
            buf++;
    }

    return 0;
}