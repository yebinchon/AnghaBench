
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_uint32_t ;
typedef int ogg_page ;


 int _lookup_serialno (int ,int *,int) ;
 int ogg_page_serialno (int *) ;

__attribute__((used)) static int _lookup_page_serialno(ogg_page *og, ogg_uint32_t *serialno_list, int n){
  ogg_uint32_t s = ogg_page_serialno(og);
  return _lookup_serialno(s,serialno_list,n);
}
