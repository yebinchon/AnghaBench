
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uri_designator ;
typedef int short_uri_designator ;


 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
uri_prefix_length(const char *connstr)
{
 const char uri_designator[] = "postgresql://";
 const char short_uri_designator[] = "postgres://";

 if (strncmp(connstr, uri_designator,
    sizeof(uri_designator) - 1) == 0)
  return sizeof(uri_designator) - 1;

 if (strncmp(connstr, short_uri_designator,
    sizeof(short_uri_designator) - 1) == 0)
  return sizeof(short_uri_designator) - 1;

 return 0;
}
