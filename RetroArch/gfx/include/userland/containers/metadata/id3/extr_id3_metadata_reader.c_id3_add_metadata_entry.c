
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
 TYPE_1__* id3_metadata_append (int *,int ,unsigned int) ;
 unsigned int strlen (char const*) ;
 int strncpy (int ,char const*,unsigned int) ;

__attribute__((used)) static VC_CONTAINER_METADATA_T *id3_add_metadata_entry( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_METADATA_KEY_T key, const char *value )
{
   VC_CONTAINER_METADATA_T *meta;
   unsigned int len = strlen(value);

   if ((meta = id3_metadata_append(p_ctx, key, len + 1)) != ((void*)0))
   {
      unsigned int size = meta->size - 1;

      if (len > size)
      {
         LOG_DEBUG(p_ctx, "metadata value truncated (%d characters lost)", len - size);
      }

      strncpy(meta->value, value, size);
   }

   return meta;
}
