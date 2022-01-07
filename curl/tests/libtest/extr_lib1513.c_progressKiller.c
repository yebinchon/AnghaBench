
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static int progressKiller(void *arg,
                          double dltotal,
                          double dlnow,
                          double ultotal,
                          double ulnow)
{
  (void)arg;
  (void)dltotal;
  (void)dlnow;
  (void)ultotal;
  (void)ulnow;
  printf("PROGRESSFUNCTION called\n");
  return 1;
}
