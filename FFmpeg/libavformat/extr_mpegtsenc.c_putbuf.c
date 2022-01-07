
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void putbuf(uint8_t **q_ptr, const uint8_t *buf, size_t len)
{
    memcpy(*q_ptr, buf, len);
    *q_ptr += len;
}
