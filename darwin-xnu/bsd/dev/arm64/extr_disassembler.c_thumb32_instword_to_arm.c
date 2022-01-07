
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint32_t thumb32_instword_to_arm(uint16_t hw1, uint16_t hw2)
{
 return (hw1 << 16) | hw2;
}
