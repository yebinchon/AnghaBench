
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * typefilter_t ;


 int KDBG_EXTRACT_CSC (int ) ;
 int assert (int ) ;
 int isset (int *,int ) ;

__attribute__((used)) static bool typefilter_is_debugid_allowed(typefilter_t tf, uint32_t id)
{
 assert(tf != ((void*)0));
 return isset(tf, KDBG_EXTRACT_CSC(id));
}
