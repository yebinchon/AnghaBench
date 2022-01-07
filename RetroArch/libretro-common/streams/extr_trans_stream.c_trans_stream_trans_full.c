
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct trans_stream_backend {int (* trans ) (void*,int,int *,int *,int*) ;int (* stream_free ) (void*) ;int (* set_out ) (void*,int *,int ) ;int (* set_in ) (void*,int const*,int ) ;void* (* stream_new ) () ;} ;
typedef enum trans_stream_error { ____Placeholder_trans_stream_error } trans_stream_error ;


 int TRANS_STREAM_ERROR_ALLOCATION_FAILURE ;
 void* stub1 () ;
 int stub2 (void*,int const*,int ) ;
 int stub3 (void*,int *,int ) ;
 int stub4 (void*,int,int *,int *,int*) ;
 int stub5 (void*) ;

bool trans_stream_trans_full(
    struct trans_stream_backend *backend, void **data,
    const uint8_t *in, uint32_t in_size,
    uint8_t *out, uint32_t out_size,
    enum trans_stream_error *error)
{
   void *rdata;
   bool ret;
   uint32_t rd, wn;

   if (data && *data)
   {
      rdata = *data;
   }
   else
   {
      rdata = backend->stream_new();
      if (!rdata)
      {
         if (error)
            *error = TRANS_STREAM_ERROR_ALLOCATION_FAILURE;
         return 0;
      }
   }

   backend->set_in(rdata, in, in_size);
   backend->set_out(rdata, out, out_size);
   ret = backend->trans(rdata, 1, &rd, &wn, error);

   if (data)
      *data = rdata;
   else
      backend->stream_free(rdata);

   return ret;
}
