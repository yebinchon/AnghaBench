#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/ * jmethodID ;
typedef  int /*<<< orphan*/  jint ;
typedef  scalar_t__ jclass ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ *,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 char* FUNC9 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool FUNC11(char *buf,
      int *vendorId, int *productId, size_t size, int id)
{
   jobject name      = NULL;
   jmethodID getName = NULL;
   jobject device    = NULL;
   jmethodID method  = NULL;
   jclass    class   = 0;
   const char *str   = NULL;
   JNIEnv     *env   = (JNIEnv*)FUNC7();

   if (!env)
      goto error;

   FUNC6("Using old lookup");

   FUNC2(env, class, "android/view/InputDevice");
   if (!class)
      goto error;

   FUNC4(env, method, class, "getDevice",
         "(I)Landroid/view/InputDevice;");
   if (!method)
      goto error;

   FUNC1(env, device, class, method, (jint)id);
   if (!device)
   {
      FUNC5("Failed to find device for ID: %d\n", id);
      goto error;
   }

   FUNC3(env, getName, class, "getName", "()Ljava/lang/String;");
   if (!getName)
      goto error;

   FUNC0(env, name, device, getName);
   if (!name)
   {
      FUNC5("Failed to find name for device ID: %d\n", id);
      goto error;
   }

   buf[0] = '\0';

   str = (*env)->GetStringUTFChars(env, name, 0);
   if (str)
      FUNC8(buf, str, size);
   (*env)->ReleaseStringUTFChars(env, name, str);

   FUNC6("device name: %s\n", buf);

   return true;
error:
   return false;
}