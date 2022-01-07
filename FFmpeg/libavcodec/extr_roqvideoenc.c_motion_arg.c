
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__* d; } ;
typedef TYPE_1__ motion_vect ;



__attribute__((used)) static inline uint8_t motion_arg(motion_vect mot)
{
    uint8_t ax = 8 - ((uint8_t) mot.d[0]);
    uint8_t ay = 8 - ((uint8_t) mot.d[1]);
    return ((ax&15)<<4) | (ay&15);
}
