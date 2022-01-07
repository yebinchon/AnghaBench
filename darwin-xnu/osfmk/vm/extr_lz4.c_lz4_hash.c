
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int LZ4_COMPRESS_HASH_BITS ;

__attribute__((used)) static inline uint32_t lz4_hash(uint32_t x) { return (x * 2654435761U) >> (32 - LZ4_COMPRESS_HASH_BITS); }
