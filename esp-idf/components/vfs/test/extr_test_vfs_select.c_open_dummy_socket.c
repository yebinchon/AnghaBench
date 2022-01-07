
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_socktype; int ai_family; } ;


 int AF_INET ;
 int SOCK_DGRAM ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int ,int const) ;
 int TEST_ASSERT_NOT_NULL (struct addrinfo*) ;
 int getaddrinfo (char*,char*,struct addrinfo const*,struct addrinfo**) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int open_dummy_socket(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res = ((void*)0);

    const int err = getaddrinfo("localhost", "80", &hints, &res);
    TEST_ASSERT_EQUAL(0, err);
    TEST_ASSERT_NOT_NULL(res);

    const int dummy_socket_fd = socket(res->ai_family, res->ai_socktype, 0);
    TEST_ASSERT(dummy_socket_fd >= 0);

    return dummy_socket_fd;
}
