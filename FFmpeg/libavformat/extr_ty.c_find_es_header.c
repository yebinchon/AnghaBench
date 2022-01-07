
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcmp (int const*,int const*,int) ;

__attribute__((used)) static int find_es_header(const uint8_t *header,
                          const uint8_t *buffer, int search_len)
{
    int count;

    for (count = 0; count < search_len; count++) {
        if (!memcmp(&buffer[count], header, 4))
            return count;
    }
    return -1;
}
