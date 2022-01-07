
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int g_num_waitqs ;
 int jenkins_hash (char*,size_t) ;

__attribute__((used)) static __inline__ uint32_t waitq_hash(char *key, size_t length)
{
 uint32_t hash = jenkins_hash(key, length);

 hash &= (g_num_waitqs - 1);
 return hash;
}
