
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double HASH_MAX_EFF_LOAD ;

int get_min_empty(int num_buckets){

    return (int)(num_buckets * (1.0 - HASH_MAX_EFF_LOAD));
}
