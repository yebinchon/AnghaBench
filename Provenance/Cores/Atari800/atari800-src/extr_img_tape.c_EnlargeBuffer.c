
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_3__ {size_t buffer_size; int buffer; } ;
typedef TYPE_1__ IMG_TAPE_t ;


 int Util_realloc (int ,int) ;

__attribute__((used)) static void EnlargeBuffer(IMG_TAPE_t *file, size_t size)
{
 if (file->buffer_size < size) {

  file->buffer_size *= 2;
  if (file->buffer_size < size)
   file->buffer_size = size;
  file->buffer = Util_realloc(file->buffer, file->buffer_size * sizeof(UBYTE));
 }
}
