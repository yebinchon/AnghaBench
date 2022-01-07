
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct IDAT_list {scalar_t__* lengths; unsigned int count; struct IDAT_list const* next; } const IDAT_list ;
struct IDAT {scalar_t__ idat_length; unsigned int idat_count; scalar_t__ idat_index; struct IDAT_list const* idat_list_tail; struct IDAT_list const* idat_cur; TYPE_1__* global; } ;
typedef scalar_t__ png_uint_32 ;
struct TYPE_2__ {scalar_t__ idat_max; } ;


 int assert (int) ;

__attribute__((used)) static png_uint_32
rechunk_length(struct IDAT *idat, int start)



{
   png_uint_32 len = idat->global->idat_max;

   if (len == 0)
   {
      const struct IDAT_list *cur;
      unsigned int count;

      if (start)
         return idat->idat_length;




      cur = idat->idat_cur;
      count = idat->idat_count;

      assert(idat->idat_index == idat->idat_length &&
         idat->idat_length == cur->lengths[count]);


      if (++count < cur->count)
         return cur->lengths[count];


      assert(cur != idat->idat_list_tail);
      cur = cur->next;
      assert(cur != ((void*)0) && cur->count > 0);
      return cur->lengths[0];
   }

   else
   {



      png_uint_32 have = idat->idat_length - idat->idat_index;

      if (len > have)
      {
         struct IDAT_list *cur = idat->idat_cur;
         unsigned int j = idat->idat_count+1;

         do
         {




            assert(cur != ((void*)0));

            for (;;)
            {

               for (; j < cur->count; ++j)
               {
                  have += cur->lengths[j];
                  if (len <= have)
                     return len;
               }


               if (cur == idat->idat_list_tail)
                  return have;

               cur = cur->next;
               j = 0;
            }
         }
         while (len > have);
      }

      return len;
   }
}
