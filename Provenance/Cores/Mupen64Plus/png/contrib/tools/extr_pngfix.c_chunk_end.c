
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk {int dummy; } ;


 int CLEAR (struct chunk) ;

__attribute__((used)) static void
chunk_end(struct chunk **chunk_var)
{
   struct chunk *chunk = *chunk_var;

   *chunk_var = ((void*)0);
   CLEAR(*chunk);
}
