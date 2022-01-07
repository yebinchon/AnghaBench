
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text_crypter_create_hook_t ;


 int text_crypter_create ;

void text_crypter_create_hook_set(text_crypter_create_hook_t hook)
{
 text_crypter_create=hook;
}
