
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int IntListToStr (char*,int ,int *,char*) ;
 int ReleaseIntList (int *) ;
 int * StrToIntList (char*,int) ;

void NormalizeIntListStr(char *dst, UINT dst_size, char *src, bool sorted, char *separate_str)
{
 LIST *o;

 o = StrToIntList(src, sorted);

 IntListToStr(dst, dst_size, o, separate_str);

 ReleaseIntList(o);
}
