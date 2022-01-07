
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int memrev32 (int *) ;

uint32_t intrev32(uint32_t v) {
    memrev32(&v);
    return v;
}
