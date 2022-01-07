
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int key ;


 int jenkins_hash (char*,int) ;
 int ts_htable_buckets ;

__attribute__((used)) static inline uint32_t
turnstile_hash(uintptr_t proprietor)
{
 char *key = (char *)&proprietor;
 uint32_t hash = jenkins_hash(key, sizeof(key));
 hash &= (ts_htable_buckets - 1);
 return hash;
}
