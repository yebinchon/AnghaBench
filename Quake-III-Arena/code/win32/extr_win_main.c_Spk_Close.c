
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ fh ;

void Spk_Close()
{
  if (!fh)
    return;

  close( fh );
  fh = 0;
}
