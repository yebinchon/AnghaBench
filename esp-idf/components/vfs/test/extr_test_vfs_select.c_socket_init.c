
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; int member_0; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_socktype; int ai_family; } ;


 int AF_INET ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_MESSAGE (int,int ,char*) ;
 int TEST_ASSERT_NOT_NULL (struct addrinfo*) ;
 int bind (int,struct sockaddr*,int) ;
 int connect (int,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,char*,struct addrinfo const*,struct addrinfo**) ;
 int htonl (int ) ;
 int htons (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int socket_init(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res;
    int err;
    struct sockaddr_in saddr = { 0 };
    int socket_fd = -1;

    err = getaddrinfo("localhost", "80", &hints, &res);
    TEST_ASSERT_EQUAL(err, 0);
    TEST_ASSERT_NOT_NULL(res);

    socket_fd = socket(res->ai_family, res->ai_socktype, 0);
    TEST_ASSERT(socket_fd >= 0);

    saddr.sin_family = PF_INET;
    saddr.sin_port = htons(80);
    saddr.sin_addr.s_addr = htonl(INADDR_ANY);
    err = bind(socket_fd, (struct sockaddr *) &saddr, sizeof(struct sockaddr_in));
    TEST_ASSERT(err >= 0);

    err = connect(socket_fd, res->ai_addr, res->ai_addrlen);
    TEST_ASSERT_EQUAL_MESSAGE(err, 0, "Socket connection failed");

    freeaddrinfo(res);

    return socket_fd;
}
