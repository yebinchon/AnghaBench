
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tf_triangle ;


 int BigLong (int) ;

__attribute__((used)) static void ByteSwapTri (tf_triangle *tri)
{
 int i;

 for (i=0 ; i<sizeof(tf_triangle)/4 ; i++)
 {
  ((int *)tri)[i] = BigLong (((int *)tri)[i]);
 }
}
