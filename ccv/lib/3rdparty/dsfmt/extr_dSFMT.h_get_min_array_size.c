
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsfmt_get_min_array_size () ;

__attribute__((used)) inline static int get_min_array_size(void) {
    return dsfmt_get_min_array_size();
}
