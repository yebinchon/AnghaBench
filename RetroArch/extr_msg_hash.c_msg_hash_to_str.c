
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
 char* msg_hash_to_str_ar (int) ;
 char* msg_hash_to_str_chs (int) ;
 char* msg_hash_to_str_cht (int) ;
 char* msg_hash_to_str_de (int) ;
 char* msg_hash_to_str_el (int) ;
 char* msg_hash_to_str_eo (int) ;
 char* msg_hash_to_str_es (int) ;
 char* msg_hash_to_str_fr (int) ;
 char* msg_hash_to_str_it (int) ;
 char* msg_hash_to_str_jp (int) ;
 char* msg_hash_to_str_ko (int) ;
 char* msg_hash_to_str_nl (int) ;
 char* msg_hash_to_str_pl (int) ;
 char* msg_hash_to_str_pt_br (int) ;
 char* msg_hash_to_str_pt_pt (int) ;
 char* msg_hash_to_str_ru (int) ;
 char* msg_hash_to_str_tr (int) ;
 char const* msg_hash_to_str_us (int) ;
 char* msg_hash_to_str_vn (int) ;
 int string_is_equal (char const*,char*) ;
 int uint_user_language ;

const char *msg_hash_to_str(enum msg_hash_enums msg)
{
   const char *ret = ((void*)0);
   if (ret && !string_is_equal(ret, "null"))
      return ret;

   return msg_hash_to_str_us(msg);
}
