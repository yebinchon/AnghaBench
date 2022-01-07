
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int jenkins_hash (char*,size_t) ;
 int ull_hash_buckets ;

__attribute__((used)) static __inline__ uint32_t
ull_hash_index(char *key, size_t length)
{
 uint32_t hash = jenkins_hash(key, length);

 hash &= (ull_hash_buckets - 1);

 return hash;
}
