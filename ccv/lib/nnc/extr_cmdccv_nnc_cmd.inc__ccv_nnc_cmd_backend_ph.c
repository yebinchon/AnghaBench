
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline int _ccv_nnc_cmd_backend_ph(const uint32_t backend)
{
 switch ((backend >> 0) % 1)
 {
  case 0:
  default:
   return ((backend >> 28) % 6) + 0;
 }
}
