
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fo ;
 int fprintf (int ,char*,...) ;

__attribute__((used)) static void out(int r, int is_last)
{
 if (!is_last)
 {
  fprintf(fo, "    or      $t%i, $t%i, $a2\n", r, r);
  fprintf(fo, "    sb      $t%i, %i($a0)\n", r, r);
 }
 else
 {
  fprintf(fo, "    or      $t%i, $t%i, $a2\n", r, r);
  fprintf(fo, "    jr      $ra\n");
  fprintf(fo, "    sb      $t%i, %i($a0)\n", r, r);
 }
}
