
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* hash_sizes ;
 int size_idx (int) ;

int fit_size(int current){
    int i = size_idx(current);
    return hash_sizes[i];
}
