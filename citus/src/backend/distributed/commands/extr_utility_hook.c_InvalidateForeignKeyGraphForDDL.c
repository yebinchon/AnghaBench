
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidateForeignKeyGraph () ;
 int shouldInvalidateForeignKeyGraph ;

void
InvalidateForeignKeyGraphForDDL(void)
{
 if (shouldInvalidateForeignKeyGraph)
 {
  InvalidateForeignKeyGraph();

  shouldInvalidateForeignKeyGraph = 0;
 }
}
