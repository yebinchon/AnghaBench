
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int EMUFILE ;


 int double_to_u64 (double) ;
 int write64le (int ,int *) ;

inline int write_double_le(double b, EMUFILE*is) { uint64 temp = double_to_u64(b); int ret = write64le(temp,is); return ret; }
