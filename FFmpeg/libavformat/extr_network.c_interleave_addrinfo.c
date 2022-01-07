
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; struct addrinfo* ai_next; } ;



__attribute__((used)) static void interleave_addrinfo(struct addrinfo *base)
{
    struct addrinfo **next = &base->ai_next;
    while (*next) {
        struct addrinfo *cur = *next;

        if (cur->ai_family == base->ai_family) {
            next = &cur->ai_next;
            continue;
        }
        if (cur == base->ai_next) {


            base = cur;
            next = &base->ai_next;
            continue;
        }

        *next = cur->ai_next;

        cur->ai_next = base->ai_next;
        base->ai_next = cur;





        base = cur->ai_next;
    }
}
