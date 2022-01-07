
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Memory {scalar_t__ size; int memory; } ;


 int malloc (int) ;

__attribute__((used)) static void init_memory(struct Memory *chunk)
{
  chunk->memory = malloc(1);
  chunk->size = 0;
}
