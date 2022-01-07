
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

field_t *Hist_Prev()
{
  int hist_prev;
  assert(hist_count <= TTY_HISTORY);
  assert(hist_count >= 0);
  assert(hist_current >= -1);
  assert(hist_current <= hist_count);
  hist_prev = hist_current + 1;
  if (hist_prev >= hist_count)
  {
    return ((void*)0);
  }
  hist_current++;
  return &(ttyEditLines[hist_current]);
}
