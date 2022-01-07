
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int field_t ;


 int TTY_HISTORY ;
 int assert (int) ;
 int hist_count ;
 int hist_current ;
 int * ttyEditLines ;

void Hist_Add(field_t *field)
{
  int i;
  assert(hist_count <= TTY_HISTORY);
  assert(hist_count >= 0);
  assert(hist_current >= -1);
  assert(hist_current <= hist_count);

  for (i=TTY_HISTORY-1; i>0; i--)
  {
    ttyEditLines[i] = ttyEditLines[i-1];
  }
  ttyEditLines[0] = *field;
  if (hist_count<TTY_HISTORY)
  {
    hist_count++;
  }
  hist_current = -1;
}
