
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int PFLOGIFS_MAX ;
 int if_clone_attach (int *) ;
 int pflog_cloner ;
 int pflogif_list ;
 int ** pflogifs ;

void
pfloginit(void)
{
 int i;

 LIST_INIT(&pflogif_list);
 for (i = 0; i < PFLOGIFS_MAX; i++)
  pflogifs[i] = ((void*)0);

 (void) if_clone_attach(&pflog_cloner);
}
