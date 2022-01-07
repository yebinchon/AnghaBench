
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_action { ____Placeholder_msg_hash_action } msg_hash_action ;




 unsigned int uint_user_language ;

void msg_hash_set_uint(enum msg_hash_action type, unsigned val)
{
   switch (type)
   {
      case 128:
         uint_user_language = val;
         break;
      case 129:
         break;
   }
}
