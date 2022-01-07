
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VC_CONTAINER_T ;
struct TYPE_4__ {int size; int value; } ;
typedef TYPE_1__ VC_CONTAINER_METADATA_T ;
typedef int VC_CONTAINER_METADATA_KEY_T ;


 int LOG_DEBUG (int *,char*,unsigned int) ;
 int READ_BYTES (int *,int ,unsigned int) ;
 int SKIP_BYTES (int *,unsigned int) ;
 TYPE_1__* id3_metadata_append (int *,int ,unsigned int) ;

__attribute__((used)) static VC_CONTAINER_METADATA_T *id3_read_metadata_entry( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_METADATA_KEY_T key, unsigned int len )
{
   VC_CONTAINER_METADATA_T *meta;

   if ((meta = id3_metadata_append(p_ctx, key, len + 1)) != ((void*)0))
   {
      unsigned int size = meta->size - 1;
      READ_BYTES(p_ctx, meta->value, size);

      if (len > size)
      {
         LOG_DEBUG(p_ctx, "metadata value truncated (%d characters lost)", len - size);
         SKIP_BYTES(p_ctx, len - size);
      }
   }
   else
   {
      SKIP_BYTES(p_ctx, len);
   }

   return meta;
}
