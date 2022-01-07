
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfmt_t ;


 int sfmt_genrand_uint64 (int *) ;
 double sfmt_to_res53 (int ) ;

__attribute__((used)) inline static double sfmt_genrand_res53(sfmt_t * sfmt)
{
    return sfmt_to_res53(sfmt_genrand_uint64(sfmt));
}
