
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
 int ESP_LOGE (int ,char*,...) ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int TAG ;
 int bind (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ connect (scalar_t__,int ,int ) ;
 int errno ;
 int esp_netif_init () ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,char*,struct addrinfo const*,struct addrinfo**) ;
 int htonl (int ) ;
 int htons (int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int socket_deinit () ;
 scalar_t__ socket_fd ;

__attribute__((used)) static void socket_init(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res;
    int err;
    struct sockaddr_in saddr = { 0 };

    esp_netif_init();

    err = getaddrinfo("localhost", "80", &hints, &res);

    if (err != 0 || res == ((void*)0)) {
        ESP_LOGE(TAG, "DNS lookup failed: %d", errno);
        return;
    }

    socket_fd = socket(res->ai_family, res->ai_socktype, 0);

    if (socket_fd < 0) {
        ESP_LOGE(TAG, "Failed to allocate socket.");
        freeaddrinfo(res);
        return;
    }

    saddr.sin_family = PF_INET;
    saddr.sin_port = htons(80);
    saddr.sin_addr.s_addr = htonl(INADDR_ANY);
    err = bind(socket_fd, (struct sockaddr *) &saddr, sizeof(struct sockaddr_in));
    if (err < 0) {
        ESP_LOGE(TAG, "Failed to bind socket");
        freeaddrinfo(res);
        socket_deinit();
        return;
    }

    if (connect(socket_fd, res->ai_addr, res->ai_addrlen) != 0) {
        ESP_LOGE(TAG, "Socket connection failed: %d", errno);
        freeaddrinfo(res);
        socket_deinit();
        return;
    }

    freeaddrinfo(res);
}
