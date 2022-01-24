#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/ * jmethodID ;
typedef  int /*<<< orphan*/  jint ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_10__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ *,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 char* FUNC10 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool FUNC12(char *buf,
      int *vendorId, int *productId, size_t size, int id)
{
   jmethodID getVendorId  = NULL;
   jmethodID getProductId = NULL;
   jmethodID getName      = NULL;
   jobject device         = NULL;
   jobject name           = NULL;
   jmethodID method       = NULL;
   jclass class           = NULL;
   const char *str        = NULL;
   JNIEnv     *env        = (JNIEnv*)FUNC8();

   if (!env)
      goto error;

   FUNC7("Using new lookup");

   FUNC3(env, class, "android/view/InputDevice");
   if (!class)
      goto error;

   FUNC5(env, method, class, "getDevice",
         "(I)Landroid/view/InputDevice;");
   if (!method)
      goto error;

   FUNC2(env, device, class, method, (jint)id);
   if (!device)
   {
      FUNC6("Failed to find device for ID: %d\n", id);
      goto error;
   }

   FUNC4(env, getName, class, "getName", "()Ljava/lang/String;");
   if (!getName)
      goto error;

   FUNC1(env, name, device, getName);
   if (!name)
   {
      FUNC6("Failed to find name for device ID: %d\n", id);
      goto error;
   }

   buf[0] = '\0';

   str = (*env)->GetStringUTFChars(env, name, 0);
   if (str)
      FUNC9(buf, str, size);
   (*env)->ReleaseStringUTFChars(env, name, str);

   FUNC7("device name: %s\n", buf);

   FUNC4(env, getVendorId, class, "getVendorId", "()I");
   if (!getVendorId)
      goto error;

   FUNC0(env, *vendorId, device, getVendorId);

   FUNC7("device vendor id: %d\n", *vendorId);

   FUNC4(env, getProductId, class, "getProductId", "()I");
   if (!getProductId)
      goto error;

   *productId = 0;
   FUNC0(env, *productId, device, getProductId);

   FUNC7("device product id: %d\n", *productId);

   return true;
error:
   return false;
}