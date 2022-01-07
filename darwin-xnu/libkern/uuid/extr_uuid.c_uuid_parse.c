
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uuid_t ;
typedef char* uuid_string_t ;


 int sscanf (char* const,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*) ;

int
uuid_parse(const uuid_string_t in, uuid_t uu)
{
 int n = 0;

 sscanf(in,
  "%2hhx%2hhx%2hhx%2hhx-"
  "%2hhx%2hhx-"
  "%2hhx%2hhx-"
  "%2hhx%2hhx-"
  "%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%n",
  &uu[0], &uu[1], &uu[2], &uu[3],
  &uu[4], &uu[5],
  &uu[6], &uu[7],
  &uu[8], &uu[9],
  &uu[10], &uu[11], &uu[12], &uu[13], &uu[14], &uu[15], &n);

 return (n != 36 || in[n] != '\0' ? -1 : 0);
}
