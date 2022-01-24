#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * VC_CONTAINER_READER_OPEN_FUNC_T ;

/* Variables and functions */
 char* DL_PATH_PREFIX ; 
 char* DL_PREFIX_RD ; 
 char* DL_PREFIX_WR ; 
 char const* DL_SUFFIX ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VCOS_DL_NOW ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,char*,char const*,char const*,char const*,...) ; 
 unsigned int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,char const*) ; 

__attribute__((used)) static VC_CONTAINER_READER_OPEN_FUNC_T FUNC9(void **handle, const char *name, const char *ext, int read)
{
   #define DL_PREFIX_RD "reader_"
   #define DL_PREFIX_WR "writer_"
   const char *entrypt_read = {"reader_open"};
   const char *entrypt_write = {"writer_open"};
   char *dl_name, *entrypt_name;
   void *dl_handle;
   VC_CONTAINER_READER_OPEN_FUNC_T func = NULL;
   unsigned dl_size, ep_size, name_len = FUNC4(name) + (ext ? FUNC4(ext) : 0);

   FUNC5(read == 0 || read == 1);

   dl_size = FUNC4(DL_PATH_PREFIX) + FUNC0(FUNC4(DL_PREFIX_RD), FUNC4(DL_PREFIX_WR)) + name_len + FUNC4(DL_SUFFIX) + 1;
   if ((dl_name = FUNC2(dl_size)) == NULL)
      return NULL;

   ep_size = name_len + 1 + FUNC0(FUNC4(entrypt_read), FUNC4(entrypt_write)) + 1;
   if ((entrypt_name = FUNC2(ep_size)) == NULL)
   {
      FUNC1(dl_name);
      return NULL;
   }

   FUNC3(dl_name, dl_size, "%s%s%s%s%s", DL_PATH_PREFIX, read ? DL_PREFIX_RD : DL_PREFIX_WR, ext ? ext : "", name, DL_SUFFIX);
   FUNC3(entrypt_name, ep_size, "%s_%s%s", name, ext ? ext : "", read ? entrypt_read : entrypt_write);

   if ( (dl_handle = FUNC7(dl_name, VCOS_DL_NOW)) != NULL )
   {
      /* Try generic entrypoint name before the mangled, full name */
      func = (VC_CONTAINER_READER_OPEN_FUNC_T)FUNC8(dl_handle, read ? entrypt_read : entrypt_write);
#if !defined(__VIDEOCORE__) /* The following would be pointless on MW/VideoCore */
      if (!func) func = (VC_CONTAINER_READER_OPEN_FUNC_T)FUNC8(dl_handle, entrypt_name);
#endif
      /* Only return handle if symbol found */
      if (func)
         *handle = dl_handle;
      else
         FUNC6(dl_handle);
   }

   FUNC1(entrypt_name);
   FUNC1(dl_name);
   return func;
}