
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_charp ;
typedef int * png_charp ;
typedef int chunk_insert ;


 int insert_tEXt ;
 int * make_insert (char*,int ,int,int **) ;
 int * strstash (char const*) ;
 int * strstash_list (int const*) ;

__attribute__((used)) static chunk_insert *
add_tEXt(const char *key, const png_const_charp *text)
{
   static char what[5] = { 116, 69, 88, 116, 0 };
   png_charp parameter_list[3];

   parameter_list[0] = strstash(key);
   parameter_list[1] = strstash_list(text);
   parameter_list[2] = ((void*)0);

   return make_insert(what, insert_tEXt, 2, parameter_list);
}
