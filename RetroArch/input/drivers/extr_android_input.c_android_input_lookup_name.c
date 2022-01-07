
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int * jobject ;
typedef int * jmethodID ;
typedef int jint ;
typedef int * jclass ;
struct TYPE_10__ {char* (* GetStringUTFChars ) (TYPE_1__**,int *,int ) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int *,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int CALL_INT_METHOD (TYPE_1__**,int,int *,int *) ;
 int CALL_OBJ_METHOD (TYPE_1__**,int *,int *,int *) ;
 int CALL_OBJ_STATIC_METHOD_PARAM (TYPE_1__**,int *,int *,int *,int ) ;
 int FIND_CLASS (TYPE_1__**,int *,char*) ;
 int GET_METHOD_ID (TYPE_1__**,int *,int *,char*,char*) ;
 int GET_STATIC_METHOD_ID (TYPE_1__**,int *,int *,char*,char*) ;
 int RARCH_ERR (char*,int) ;
 int RARCH_LOG (char*,...) ;
 scalar_t__ jni_thread_getenv () ;
 int strlcpy (char*,char const*,size_t) ;
 char* stub1 (TYPE_1__**,int *,int ) ;
 int stub2 (TYPE_1__**,int *,char const*) ;

__attribute__((used)) static bool android_input_lookup_name(char *buf,
      int *vendorId, int *productId, size_t size, int id)
{
   jmethodID getVendorId = ((void*)0);
   jmethodID getProductId = ((void*)0);
   jmethodID getName = ((void*)0);
   jobject device = ((void*)0);
   jobject name = ((void*)0);
   jmethodID method = ((void*)0);
   jclass class = ((void*)0);
   const char *str = ((void*)0);
   JNIEnv *env = (JNIEnv*)jni_thread_getenv();

   if (!env)
      goto error;

   RARCH_LOG("Using new lookup");

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

   GET_METHOD_ID(env, getVendorId, class, "getVendorId", "()I");
   if (!getVendorId)
      goto error;

   CALL_INT_METHOD(env, *vendorId, device, getVendorId);

   RARCH_LOG("device vendor id: %d\n", *vendorId);

   GET_METHOD_ID(env, getProductId, class, "getProductId", "()I");
   if (!getProductId)
      goto error;

   *productId = 0;
   CALL_INT_METHOD(env, *productId, device, getProductId);

   RARCH_LOG("device product id: %d\n", *productId);

   return 1;
error:
   return 0;
}
