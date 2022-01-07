
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned int meta_num; TYPE_2__** meta; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
struct TYPE_11__ {scalar_t__ key; char* value; unsigned int size; } ;
typedef TYPE_2__ VC_CONTAINER_METADATA_T ;
typedef scalar_t__ VC_CONTAINER_METADATA_KEY_T ;


 unsigned int MIN (unsigned int,int) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__** realloc (TYPE_2__**,int) ;

__attribute__((used)) static VC_CONTAINER_METADATA_T *id3_metadata_append( VC_CONTAINER_T *p_ctx,
                                                     VC_CONTAINER_METADATA_KEY_T key,
                                                     unsigned int size )
{
   VC_CONTAINER_METADATA_T *meta, **p_meta;
   unsigned int i;

   for (i = 0; i != p_ctx->meta_num; ++i)
   {
      if (key == p_ctx->meta[i]->key) break;
   }


   if (i < p_ctx->meta_num) return ((void*)0);


   size = MIN(size, 512);


   if((meta = malloc(sizeof(VC_CONTAINER_METADATA_T) + size)) == ((void*)0))
      return ((void*)0);




   if((p_meta = realloc(p_ctx->meta, sizeof(VC_CONTAINER_METADATA_T *) * (p_ctx->meta_num + 1))) == ((void*)0))
   {
      free(meta);
      return ((void*)0);
   }

   p_ctx->meta = p_meta;
   memset(meta, 0, sizeof(VC_CONTAINER_METADATA_T) + size);
   p_ctx->meta[p_ctx->meta_num] = meta;
   meta->key = key;
   meta->value = (char *)&meta[1];
   meta->size = size;
   p_ctx->meta_num++;

   return meta;
}
