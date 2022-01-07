
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Util_malloc (int) ;
 scalar_t__ fabs (double const) ;
 int free (int*) ;

__attribute__((used)) static void Search(int r, int Ext[], int gridsize, const double E[])
{
 int i, j, k, l, extra;
 int up, alt;
 int *foundExt;


 foundExt = (int *) Util_malloc((2 * r) * sizeof(int));
 k = 0;


 if (((E[0] > 0.0) && (E[0] > E[1])) ||
    ((E[0] < 0.0) && (E[0] < E[1])))
  foundExt[k++] = 0;


 for (i = 1; i < gridsize - 1; i++) {
  if (((E[i] >= E[i - 1]) && (E[i] > E[i + 1]) && (E[i] > 0.0)) ||
     ((E[i] <= E[i - 1]) && (E[i] < E[i + 1]) && (E[i] < 0.0)))
   foundExt[k++] = i;
 }


 j = gridsize - 1;
 if (((E[j] > 0.0) && (E[j] > E[j - 1])) ||
    ((E[j] < 0.0) && (E[j] < E[j - 1])))
  foundExt[k++] = j;


 extra = k - (r + 1);

 while (extra > 0) {
  if (E[foundExt[0]] > 0.0)
   up = 1;
  else
   up = 0;

  l = 0;
  alt = 1;
  for (j = 1; j < k; j++) {
   if (fabs(E[foundExt[j]]) < fabs(E[foundExt[l]]))
    l = j;
   if ((up) && (E[foundExt[j]] < 0.0))
    up = 0;
   else if ((!up) && (E[foundExt[j]] > 0.0))
    up = 1;
   else {
    alt = 0;
    break;
   }
  }



  if ((alt) && (extra == 1)) {
   if (fabs(E[foundExt[k - 1]]) < fabs(E[foundExt[0]]))
    l = foundExt[k - 1];
   else
    l = foundExt[0];
  }


  for (j = l; j < k; j++) {
   foundExt[j] = foundExt[j+1];
  }
  k--;
  extra--;
 }


 for (i = 0; i <= r; i++) {
  Ext[i] = foundExt[i];
 }

 free(foundExt);
}
