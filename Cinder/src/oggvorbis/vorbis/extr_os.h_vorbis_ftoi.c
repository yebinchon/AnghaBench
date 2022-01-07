
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _mm_cvtsd_si32 (int ) ;
 int _mm_load_sd (double*) ;

__attribute__((used)) static __inline int vorbis_ftoi(double f){
        return _mm_cvtsd_si32(_mm_load_sd(&f));
}
