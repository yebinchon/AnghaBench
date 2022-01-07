
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pool_index ;
 unsigned int pool_size ;

unsigned int vita2d_pool_free_space()
{
 return pool_size - pool_index;
}
