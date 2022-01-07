
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * easysrc_clean ;
 int * easysrc_code ;
 int * easysrc_data ;
 int * easysrc_decl ;
 int * easysrc_toohard ;
 int slist_wc_free_all (int *) ;

__attribute__((used)) static void easysrc_free(void)
{
  slist_wc_free_all(easysrc_decl);
  easysrc_decl = ((void*)0);
  slist_wc_free_all(easysrc_data);
  easysrc_data = ((void*)0);
  slist_wc_free_all(easysrc_code);
  easysrc_code = ((void*)0);
  slist_wc_free_all(easysrc_toohard);
  easysrc_toohard = ((void*)0);
  slist_wc_free_all(easysrc_clean);
  easysrc_clean = ((void*)0);
}
