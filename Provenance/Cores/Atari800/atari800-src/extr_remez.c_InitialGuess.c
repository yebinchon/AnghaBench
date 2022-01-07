
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void InitialGuess(int r, int Ext[], int gridsize)
{
 int i;

 for (i = 0; i <= r; i++)
  Ext[i] = i * (gridsize - 1) / r;
}
