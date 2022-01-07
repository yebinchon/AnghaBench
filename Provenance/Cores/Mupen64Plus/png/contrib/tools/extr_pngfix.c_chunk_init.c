
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct chunk* chunk; int type; int length; int data_pos; int global; } ;
struct chunk {scalar_t__ compressed_digits; scalar_t__ uncompressed_digits; int chunk_type; int chunk_length; int chunk_data_pos; int global; struct file* file; } ;


 int CLEAR (struct chunk) ;
 int assert (int ) ;

__attribute__((used)) static void
chunk_init(struct chunk * const chunk, struct file * const file)






{
   assert(file->chunk == ((void*)0));

   CLEAR(*chunk);

   chunk->file = file;
   chunk->global = file->global;

   chunk->chunk_data_pos = file->data_pos;
   chunk->chunk_length = file->length;
   chunk->chunk_type = file->type;




   chunk->uncompressed_digits = 0;
   chunk->compressed_digits = 0;

   file->chunk = chunk;
}
