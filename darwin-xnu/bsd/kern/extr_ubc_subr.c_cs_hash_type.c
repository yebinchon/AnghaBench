
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cs_hash {int cs_type; } ;



uint8_t cs_hash_type(
    struct cs_hash const * const cs_hash)
{
    return cs_hash->cs_type;
}
