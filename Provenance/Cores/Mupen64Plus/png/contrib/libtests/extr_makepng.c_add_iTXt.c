
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_charp ;
typedef int * png_charp ;
typedef int chunk_insert ;


 int insert_iTXt ;
 int * make_insert (char*,int ,int,int **) ;
 int * strstash (char const*) ;
 int * strstash_list (int const*) ;

__attribute__((used)) static chunk_insert *
add_iTXt(const char *key, const char *language, const char *language_key,
      const png_const_charp *text)
{
   static char what[5] = { 105, 84, 88, 116, 0 };
   png_charp parameter_list[5];

   parameter_list[0] = strstash(key);
   parameter_list[1] = strstash(language);
   parameter_list[2] = strstash(language_key);
   parameter_list[3] = strstash_list(text);
   parameter_list[4] = ((void*)0);

   return make_insert(what, insert_iTXt, 4, parameter_list);
}
