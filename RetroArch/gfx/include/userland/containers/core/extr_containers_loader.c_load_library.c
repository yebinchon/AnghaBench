
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * VC_CONTAINER_READER_OPEN_FUNC_T ;


 char* DL_PATH_PREFIX ;
 char* DL_PREFIX_RD ;
 char* DL_PREFIX_WR ;
 char const* DL_SUFFIX ;
 unsigned int MAX (unsigned int,unsigned int) ;
 int VCOS_DL_NOW ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 int snprintf (char*,unsigned int,char*,char const*,char const*,char const*,...) ;
 unsigned int strlen (char const*) ;
 int vc_container_assert (int) ;
 int vcos_dlclose (void*) ;
 void* vcos_dlopen (char*,int ) ;
 scalar_t__ vcos_dlsym (void*,char const*) ;

__attribute__((used)) static VC_CONTAINER_READER_OPEN_FUNC_T load_library(void **handle, const char *name, const char *ext, int read)
{


   const char *entrypt_read = {"reader_open"};
   const char *entrypt_write = {"writer_open"};
   char *dl_name, *entrypt_name;
   void *dl_handle;
   VC_CONTAINER_READER_OPEN_FUNC_T func = ((void*)0);
   unsigned dl_size, ep_size, name_len = strlen(name) + (ext ? strlen(ext) : 0);

   vc_container_assert(read == 0 || read == 1);

   dl_size = strlen(DL_PATH_PREFIX) + MAX(strlen("reader_"), strlen("writer_")) + name_len + strlen(DL_SUFFIX) + 1;
   if ((dl_name = malloc(dl_size)) == ((void*)0))
      return ((void*)0);

   ep_size = name_len + 1 + MAX(strlen(entrypt_read), strlen(entrypt_write)) + 1;
   if ((entrypt_name = malloc(ep_size)) == ((void*)0))
   {
      free(dl_name);
      return ((void*)0);
   }

   snprintf(dl_name, dl_size, "%s%s%s%s%s", DL_PATH_PREFIX, read ? "reader_" : "writer_", ext ? ext : "", name, DL_SUFFIX);
   snprintf(entrypt_name, ep_size, "%s_%s%s", name, ext ? ext : "", read ? entrypt_read : entrypt_write);

   if ( (dl_handle = vcos_dlopen(dl_name, VCOS_DL_NOW)) != ((void*)0) )
   {

      func = (VC_CONTAINER_READER_OPEN_FUNC_T)vcos_dlsym(dl_handle, read ? entrypt_read : entrypt_write);

      if (!func) func = (VC_CONTAINER_READER_OPEN_FUNC_T)vcos_dlsym(dl_handle, entrypt_name);


      if (func)
         *handle = dl_handle;
      else
         vcos_dlclose(dl_handle);
   }

   free(entrypt_name);
   free(dl_name);
   return func;
}
