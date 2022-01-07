
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int lerp13 (int ,int ) ;

__attribute__((used)) static inline void lerp13rgb(uint8_t *out, uint8_t *p1, uint8_t *p2)
{
    out[0] = lerp13(p1[0], p2[0]);
    out[1] = lerp13(p1[1], p2[1]);
    out[2] = lerp13(p1[2], p2[2]);
}
