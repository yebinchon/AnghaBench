
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void cpy8(uint8_t **dst, const uint8_t **src, int len){
    memcpy(*dst, *src, 8*len);
}
