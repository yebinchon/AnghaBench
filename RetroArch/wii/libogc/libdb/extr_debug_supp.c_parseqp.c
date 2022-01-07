
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 char* fhstr2int (char const*,int*) ;
 char* fhstr2thread (char const*,int*) ;

s32 parseqp(const char *in,s32 *mask,s32 *thread)
{
 const char *ptr;

 ptr = fhstr2int(in+2,mask);
 if(ptr==((void*)0)) return 0;

 ptr = fhstr2thread(ptr,thread);
 if(ptr==((void*)0)) return 0;

 return 1;
}
