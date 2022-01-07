
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nbio_t {int dummy; } ;
typedef int rpng_t ;


 int IMAGE_PROCESS_ERROR ;
 int IMAGE_PROCESS_ERROR_END ;
 int IMAGE_PROCESS_NEXT ;
 int NBIO_READ ;
 int free (int *) ;
 int nbio_begin_read (struct nbio_t*) ;
 int nbio_free (struct nbio_t*) ;
 void* nbio_get_ptr (struct nbio_t*,size_t*) ;
 int nbio_iterate (struct nbio_t*) ;
 scalar_t__ nbio_open (char const*,int ) ;
 int * rpng_alloc () ;
 int rpng_free (int *) ;
 int rpng_is_valid (int *) ;
 scalar_t__ rpng_iterate_image (int *) ;
 int rpng_process_image (int *,void**,size_t,unsigned int*,unsigned int*) ;
 int rpng_set_buf_ptr (int *,int *) ;
 int rpng_start (int *) ;

__attribute__((used)) static bool rpng_load_image_argb(const char *path, uint32_t **data,
      unsigned *width, unsigned *height)
{
   int retval;
   size_t file_len;
   bool ret = 1;
   rpng_t *rpng = ((void*)0);
   void *ptr = ((void*)0);
   struct nbio_t* handle = (struct nbio_t*)nbio_open(path, NBIO_READ);

   if (!handle)
      goto end;

   nbio_begin_read(handle);

   while (!nbio_iterate(handle));

   ptr = nbio_get_ptr(handle, &file_len);

   if (!ptr)
   {
      ret = 0;
      goto end;
   }

   rpng = rpng_alloc();

   if (!rpng)
   {
      ret = 0;
      goto end;
   }

   if (!rpng_set_buf_ptr(rpng, (uint8_t*)ptr))
   {
      ret = 0;
      goto end;
   }

   if (!rpng_start(rpng))
   {
      ret = 0;
      goto end;
   }

   while (rpng_iterate_image(rpng));

   if (!rpng_is_valid(rpng))
   {
      ret = 0;
      goto end;
   }

   do
   {
      retval = rpng_process_image(rpng,
            (void**)data, file_len, width, height);
   }while(retval == IMAGE_PROCESS_NEXT);

   if (retval == IMAGE_PROCESS_ERROR || retval == IMAGE_PROCESS_ERROR_END)
      ret = 0;

end:
   if (handle)
      nbio_free(handle);
   if (rpng)
      rpng_free(rpng);
   rpng = ((void*)0);
   if (!ret)
      free(*data);
   return ret;
}
