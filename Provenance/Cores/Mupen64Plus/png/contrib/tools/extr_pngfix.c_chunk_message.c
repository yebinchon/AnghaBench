
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {int chunk_type; int file; } ;


 int type_message (int ,int ,char const*) ;

__attribute__((used)) static void
chunk_message(struct chunk *chunk, const char *message)
{
   type_message(chunk->file, chunk->chunk_type, message);
}
