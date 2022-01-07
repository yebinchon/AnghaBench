
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* address; } ;
typedef TYPE_1__ bt_bdaddr_t ;


 int assert (int ) ;
 int sprintf (char*,char*,int const,int const,int const,int const,int const,int const) ;

const char *bdaddr_to_string(const bt_bdaddr_t *addr, char *string, size_t size)
{
    assert(addr != ((void*)0));
    assert(string != ((void*)0));

    if (size < 18) {
        return ((void*)0);
    }

    const uint8_t *ptr = addr->address;
    sprintf(string, "%02x:%02x:%02x:%02x:%02x:%02x",
            ptr[0], ptr[1], ptr[2],
            ptr[3], ptr[4], ptr[5]);
    return string;
}
