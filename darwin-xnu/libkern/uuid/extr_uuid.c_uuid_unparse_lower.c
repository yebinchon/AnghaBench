
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uuid_t ;
typedef int uuid_string_t ;


 int snprintf (int ,int,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;

void
uuid_unparse_lower(const uuid_t uu, uuid_string_t out)
{
 snprintf(out,
  sizeof(uuid_string_t),
  "%02x%02x%02x%02x-"
  "%02x%02x-"
  "%02x%02x-"
  "%02x%02x-"
  "%02x%02x%02x%02x%02x%02x",
  uu[0], uu[1], uu[2], uu[3],
  uu[4], uu[5],
  uu[6], uu[7],
  uu[8], uu[9],
  uu[10], uu[11], uu[12], uu[13], uu[14], uu[15]);
}
