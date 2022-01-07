
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char* const,char* const) ;
 int strcmp (char* const,char* const) ;
 int strcmpi (char* const,char* const) ;

__attribute__((used)) static int
featcomp(const void *p1, const void *p2)
{
  return strcmp(* (char * const *) p1, * (char * const *) p2);

}
