
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * jstring ;
typedef enum retro_language { ____Placeholder_retro_language } retro_language ;
struct TYPE_10__ {scalar_t__ getUserLanguageString; TYPE_1__* activity; } ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_2__**,int *,int ) ;int (* ReleaseStringUTFChars ) (TYPE_2__**,int *,char const*) ;} ;
struct TYPE_8__ {int clazz; } ;
typedef TYPE_2__* JNIEnv ;


 int CALL_OBJ_METHOD (TYPE_2__**,int *,int ,scalar_t__) ;
 int RETRO_LANGUAGE_ENGLISH ;
 TYPE_6__* g_android ;
 char* getenv (char*) ;
 TYPE_2__** jni_thread_getenv () ;
 int rarch_get_language_from_iso (char const*) ;
 char* stub1 (TYPE_2__**,int *,int ) ;
 int stub2 (TYPE_2__**,int *,char const*) ;

enum retro_language frontend_unix_get_user_language(void)
{
   enum retro_language lang = RETRO_LANGUAGE_ENGLISH;
   return lang;
}
