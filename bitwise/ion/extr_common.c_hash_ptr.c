
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int hash_uint64 (uintptr_t) ;

uint64_t hash_ptr(const void *ptr) {
    return hash_uint64((uintptr_t)ptr);
}
