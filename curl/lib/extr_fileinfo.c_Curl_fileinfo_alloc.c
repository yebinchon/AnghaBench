
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileinfo {int dummy; } ;


 struct fileinfo* calloc (int,int) ;

struct fileinfo *Curl_fileinfo_alloc(void)
{
  return calloc(1, sizeof(struct fileinfo));
}
