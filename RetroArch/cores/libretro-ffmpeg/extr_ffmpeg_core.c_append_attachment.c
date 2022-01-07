
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct attachment {size_t size; int * data; } ;


 struct attachment* attachments ;
 int attachments_size ;
 scalar_t__ av_malloc (size_t) ;
 scalar_t__ av_realloc (struct attachment*,int) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void append_attachment(const uint8_t *data, size_t size)
{
   attachments = (struct attachment*)av_realloc(
         attachments, (attachments_size + 1) * sizeof(*attachments));

   attachments[attachments_size].data = (uint8_t*)av_malloc(size);
   attachments[attachments_size].size = size;
   memcpy(attachments[attachments_size].data, data, size);

   attachments_size++;
}
