
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt__edge ;


 int STBTT__COMPARE (int *,int *) ;

__attribute__((used)) static void stbtt__sort_edges_quicksort(stbtt__edge *p, int n)
{

   while (n > 12) {
      stbtt__edge t;
      int c01,c12,c,m,i,j;


      m = n >> 1;
      c01 = STBTT__COMPARE(&p[0],&p[m]);
      c12 = STBTT__COMPARE(&p[m],&p[n-1]);

      if (c01 != c12) {

         int z;
         c = STBTT__COMPARE(&p[0],&p[n-1]);


         z = (c == c12) ? 0 : n-1;
         t = p[z];
         p[z] = p[m];
         p[m] = t;
      }


      t = p[0];
      p[0] = p[m];
      p[m] = t;


      i=1;
      j=n-1;
      for(;;) {


         for (;;++i) {
            if (!STBTT__COMPARE(&p[i], &p[0])) break;
         }
         for (;;--j) {
            if (!STBTT__COMPARE(&p[0], &p[j])) break;
         }

         if (i >= j) break;
         t = p[i];
         p[i] = p[j];
         p[j] = t;

         ++i;
         --j;
      }

      if (j < (n-i)) {
         stbtt__sort_edges_quicksort(p,j);
         p = p+i;
         n = n-i;
      } else {
         stbtt__sort_edges_quicksort(p+i, n-i);
         n = j;
      }
   }
}
