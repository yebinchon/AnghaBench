
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_action { ____Placeholder_msg_hash_action } msg_hash_action ;




 unsigned int uint_user_language ;

unsigned *msg_hash_get_uint(enum msg_hash_action type)
{
   switch (type)
   {
      case 128:
         return &uint_user_language;
      case 129:
         break;
   }

   return ((void*)0);
}
