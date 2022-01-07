
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLUSTER_NAMELEN ;
 unsigned int dictGenHashFunction (void const*,int ) ;

unsigned int dictClusterNodeHash(const void *key) {
    return dictGenHashFunction(key,CLUSTER_NAMELEN);
}
