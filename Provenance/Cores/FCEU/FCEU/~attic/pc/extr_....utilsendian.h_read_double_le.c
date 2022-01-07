
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int EMUFILE ;


 int read64le (int *,int *) ;
 double u64_to_double (int ) ;

inline int read_double_le(double *Bufo, EMUFILE*is) { uint64 temp; int ret = read64le(&temp,is); *Bufo = u64_to_double(temp); return ret; }
