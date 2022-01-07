
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i24 {long long i24; } ;
typedef long long int8_t ;
typedef long long int64_t ;
typedef long long int32_t ;
typedef long long int16_t ;



__attribute__((used)) static int argnumcpy(long long val, void *to, unsigned maxlen)
{
 switch (maxlen) {
  case 0:

   break;
  case 1:
   *(int8_t *)to = val;
   break;
  case 2:
   *(int16_t *)to = val;
   break;
  case 3:

   ((struct i24 *)to)->i24 = val;
   break;
  case 4:
   *(int32_t *)to = val;
   break;
  case 8:
   *(int64_t *)to = val;
   break;
  default:
   *(int32_t *)to = val;
   maxlen = 4;
   break;
 }

 return (int)maxlen;
}
