
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * type; int * priv; } ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BUFFER_HEADER_PRIVATE_T ;


 int memset (void*,int ,unsigned int) ;
 unsigned int mmal_buffer_header_size (int ) ;

MMAL_BUFFER_HEADER_T *mmal_buffer_header_initialise(void *mem, unsigned int length)
{
   MMAL_BUFFER_HEADER_T *header;
   unsigned int header_size = mmal_buffer_header_size(0);

   if(length < header_size)
      return 0;

   memset(mem, 0, header_size);

   header = (MMAL_BUFFER_HEADER_T *)mem;
   header->type = (void *)&header[1];
   header->priv = (MMAL_BUFFER_HEADER_PRIVATE_T *)&header->type[1];
   return header;
}
