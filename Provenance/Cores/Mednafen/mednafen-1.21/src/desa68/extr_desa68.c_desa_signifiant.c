
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int desa_char (char) ;
 int desa_usignifiant (int) ;

__attribute__((used)) static void desa_signifiant(int n)
{
  if(n<0)
    {
      desa_char('-');
      n = -n;
    }
  desa_usignifiant(n);
}
