
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_Exit (int ) ;
 int CFG_save_on_exit ;
 int FALSE ;

void Atari800_ErrExit(void)
{
 CFG_save_on_exit = FALSE;
 Atari800_Exit(FALSE);
}
