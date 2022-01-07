
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {struct buffer_list* next; scalar_t__ buffer; } ;
struct buffer {size_t end_count; struct buffer_list* last; struct buffer_list first; } ;
typedef int FILE ;


 int ERANGE ;
 int MEMORY ;
 int assert (int) ;
 struct buffer_list* buffer_extend (struct buffer_list*) ;
 scalar_t__ errno ;
 scalar_t__ feof (int *) ;
 size_t fread (scalar_t__,int,int,int *) ;

__attribute__((used)) static int
buffer_from_file(struct buffer *buffer, FILE *fp)
{
   struct buffer_list *last = &buffer->first;
   size_t count = 0;

   for (;;)
   {
      size_t r = fread(last->buffer+count, 1 ,
         (sizeof last->buffer)-count, fp);

      if (r > 0)
      {
         count += r;

         if (count >= sizeof last->buffer)
         {
            assert(count == sizeof last->buffer);
            count = 0;

            if (last->next == ((void*)0))
            {
               last = buffer_extend(last);
               if (last == ((void*)0))
                  return MEMORY;
            }

            else
               last = last->next;
         }
      }

      else
      {
         if (feof(fp))
         {
            buffer->last = last;
            buffer->end_count = count;
            return 0;
         }


         return errno == 0 ? ERANGE : errno;
      }
   }
}
