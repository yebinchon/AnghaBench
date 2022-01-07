
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int * jobject ;
typedef int * jmethodID ;
typedef int jint ;
typedef scalar_t__ jclass ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int *,int ) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int *,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int CALL_OBJ_METHOD (TYPE_1__**,int *,int *,int *) ;
 int CALL_OBJ_STATIC_METHOD_PARAM (TYPE_1__**,int *,scalar_t__,int *,int ) ;
 int FIND_CLASS (TYPE_1__**,scalar_t__,char*) ;
 int GET_METHOD_ID (TYPE_1__**,int *,scalar_t__,char*,char*) ;
 int GET_STATIC_METHOD_ID (TYPE_1__**,int *,scalar_t__,char*,char*) ;
 int RARCH_ERR (char*,int) ;
 int RARCH_LOG (char*,...) ;
 scalar_t__ jni_thread_getenv () ;
 int strlcpy (char*,char const*,size_t) ;
 char* stub1 (TYPE_1__**,int *,int ) ;
 int stub2 (TYPE_1__**,int *,char const*) ;

__attribute__((used)) static bool android_input_lookup_name_prekitkat(char *buf,
      int *vendorId, int *productId, size_t size, int id)
{
   jobject name = ((void*)0);
   jmethodID getName = ((void*)0);
   jobject device = ((void*)0);
   jmethodID method = ((void*)0);
   jclass class = 0;
   const char *str = ((void*)0);
   JNIEnv *env = (JNIEnv*)jni_thread_getenv();

   if (!env)
      goto error;

   RARCH_LOG("Using old lookup");

   FIND_CLASS(env, class, "android/view/InputDevice");
   if (!class)
      goto error;

   GET_STATIC_METHOD_ID(env, method, class, "getDevice",
         "(I)Landroid/view/InputDevice;");
   if (!method)
      goto error;

   CALL_OBJ_STATIC_METHOD_PARAM(env, device, class, method, (jint)id);
   if (!device)
   {
      RARCH_ERR("Failed to find device for ID: %d\n", id);
      goto error;
   }

   GET_METHOD_ID(env, getName, class, "getName", "()Ljava/lang/String;");
   if (!getName)
      goto error;

   CALL_OBJ_METHOD(env, name, device, getName);
   if (!name)
   {
      RARCH_ERR("Failed to find name for device ID: %d\n", id);
      goto error;
   }

   buf[0] = '\0';

   str = (*env)->GetStringUTFChars(env, name, 0);
   if (str)
      strlcpy(buf, str, size);
   (*env)->ReleaseStringUTFChars(env, name, str);

   RARCH_LOG("device name: %s\n", buf);

   return 1;
error:
   return 0;
}
