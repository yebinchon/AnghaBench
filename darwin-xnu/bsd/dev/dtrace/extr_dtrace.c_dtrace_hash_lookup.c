
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probe_t ;
typedef int dtrace_hash_t ;


 int DTRACE_GETSTR (int *,void*) ;
 int * dtrace_hash_lookup_string (int *,int ) ;

__attribute__((used)) static dtrace_probe_t *
dtrace_hash_lookup(dtrace_hash_t *hash, void *template)
{
 return dtrace_hash_lookup_string(hash, DTRACE_GETSTR(hash, template));
}
