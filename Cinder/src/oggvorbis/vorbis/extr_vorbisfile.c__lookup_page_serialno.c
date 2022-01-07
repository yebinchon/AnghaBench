
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_page ;


 int _lookup_serialno (long,long*,int) ;
 long ogg_page_serialno (int *) ;

__attribute__((used)) static int _lookup_page_serialno(ogg_page *og, long *serialno_list, int n){
  long s = ogg_page_serialno(og);
  return _lookup_serialno(s,serialno_list,n);
}
