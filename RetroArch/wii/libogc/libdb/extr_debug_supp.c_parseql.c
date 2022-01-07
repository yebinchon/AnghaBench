
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 char* fhstr2thread (char const*,int*) ;
 int hstr2byte (char const*,int*) ;
 int hstr2nibble (char const*,int*) ;

s32 parseql(const char *in,s32 *first,s32 *max_cnt,s32 *athread)
{
 const char *ptr;

 ptr = in+2;
 if(!hstr2nibble(ptr,first)) return 0;

 ptr++;
 if(!hstr2byte(ptr,max_cnt)) return 0;

 ptr += 2;
 ptr = fhstr2thread(ptr,athread);
 if(ptr==((void*)0)) return 0;

 return 1;
}
