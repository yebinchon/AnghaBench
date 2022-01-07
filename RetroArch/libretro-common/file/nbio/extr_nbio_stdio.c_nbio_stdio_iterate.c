
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {size_t len; size_t progress; int op; int f; scalar_t__ data; int mode; } ;


 int BIO_READ ;
 int BIO_WRITE ;


 int fread (char*,int,size_t,int ) ;
 size_t fwrite (char*,int,size_t,int ) ;

__attribute__((used)) static bool nbio_stdio_iterate(void *data)
{
   size_t amount = 65536;
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;

   if (!handle)
      return 0;

   if (amount > handle->len - handle->progress)
      amount = handle->len - handle->progress;

   switch (handle->op)
   {
      case 129:
         if (handle->mode == BIO_READ)
         {
            amount = handle->len;
            fread((char*)handle->data, 1, amount, handle->f);
         }
         else
            fread((char*)handle->data + handle->progress, 1, amount, handle->f);
         break;
      case 128:
         if (handle->mode == BIO_WRITE)
         {
            size_t written = 0;
            amount = handle->len;
            written = fwrite((char*)handle->data, 1, amount, handle->f);
            if (written != amount)
               return 0;
         }
         else
            fwrite((char*)handle->data + handle->progress, 1, amount, handle->f);
         break;
   }

   handle->progress += amount;

   if (handle->progress == handle->len)
      handle->op = -1;
   return (handle->op < 0);
}
