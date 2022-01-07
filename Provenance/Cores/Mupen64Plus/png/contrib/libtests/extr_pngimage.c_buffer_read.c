
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int dummy; } ;
struct buffer_list {scalar_t__ buffer; struct buffer_list* next; } ;
struct buffer {size_t read_count; size_t end_count; struct buffer_list* current; struct buffer_list* last; } ;
typedef scalar_t__ png_size_t ;
typedef size_t png_bytep ;


 int INTERNAL_ERROR ;
 int USER_ERROR ;
 int display_log (struct display*,int ,char*,...) ;
 int memcpy (size_t,scalar_t__,size_t) ;

__attribute__((used)) static void
buffer_read(struct display *dp, struct buffer *bp, png_bytep data,
   png_size_t size)
{
   struct buffer_list *last = bp->current;
   size_t read_count = bp->read_count;

   while (size > 0)
   {
      size_t avail;

      if (last == ((void*)0) ||
         (last == bp->last && read_count >= bp->end_count))
      {
         display_log(dp, USER_ERROR, "file truncated (%lu bytes)",
            (unsigned long)size);

         break;
      }

      else if (read_count >= sizeof last->buffer)
      {

         last = last->next;
         read_count = 0;
         bp->current = last;


         if (last == ((void*)0))
         {
            display_log(dp, INTERNAL_ERROR, "damaged buffer list");

            break;
         }
      }

      avail = (sizeof last->buffer) - read_count;
      if (avail > size)
         avail = size;

      memcpy(data, last->buffer + read_count, avail);
      read_count += avail;
      size -= avail;
      data += avail;
   }

   bp->read_count = read_count;
}
