
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pointer ;
struct TYPE_7__ {scalar_t__ (* Init ) () ;int Exec; int (* SetFetch ) (int,int,int ) ;int (* SetWriteW ) (int *) ;int (* SetWriteB ) (int *) ;int (* SetReadW ) (int *) ;int (* SetReadB ) (int *) ;} ;
struct TYPE_6__ {scalar_t__ inbreakpoint; int * BreakpointCallBack; scalar_t__ numcodebreakpoints; TYPE_1__* codebreakpoint; scalar_t__ scsptiming2; scalar_t__ scsptiming1; } ;
struct TYPE_5__ {int addr; } ;
typedef TYPE_2__ ScspInternal ;
typedef int C68K_WRITE ;
typedef int C68K_READ ;


 scalar_t__ IsM68KRunning ;
 TYPE_4__* M68K ;
 int MAX_BREAKPOINTS ;
 int ScspChangeSoundCore (int) ;
 TYPE_2__* ScspInternalVars ;
 int * SoundRam ;
 int * T2MemoryInit (int) ;
 scalar_t__ c68k_byte_read ;
 scalar_t__ c68k_byte_write ;
 int c68k_interrupt_handler ;
 scalar_t__ c68k_word_read ;
 scalar_t__ c68k_word_write ;
 scalar_t__ calloc (int,int) ;
 int m68kexecptr ;
 scalar_t__ scsp_alloc_bufs () ;
 int scsp_init (int *,int *,int *) ;
 scalar_t__ scspframeaccurate ;
 int scsplines ;
 int scspsoundbufs ;
 int scspsoundbufsize ;
 scalar_t__ scspsoundgenpos ;
 int scspsoundlen ;
 scalar_t__ scspsoundoutleft ;
 int scu_interrupt_handler ;
 scalar_t__ stub1 () ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int stub6 (int,int,int ) ;
 int stub7 (int,int,int ) ;
 int stub8 (int,int,int ) ;
 int stub9 (int,int,int ) ;

int
ScspInit (int coreid)
{
  int i;

  if ((SoundRam = T2MemoryInit (0x80000)) == ((void*)0))
    return -1;

  if ((ScspInternalVars = (ScspInternal *)calloc(1, sizeof(ScspInternal))) == ((void*)0))
    return -1;

  if (M68K->Init () != 0)
    return -1;

  M68K->SetReadB ((C68K_READ *)c68k_byte_read);
  M68K->SetReadW ((C68K_READ *)c68k_word_read);
  M68K->SetWriteB ((C68K_WRITE *)c68k_byte_write);
  M68K->SetWriteW ((C68K_WRITE *)c68k_word_write);

  M68K->SetFetch (0x000000, 0x040000, (pointer)SoundRam);
  M68K->SetFetch (0x040000, 0x080000, (pointer)SoundRam);
  M68K->SetFetch (0x080000, 0x0C0000, (pointer)SoundRam);
  M68K->SetFetch (0x0C0000, 0x100000, (pointer)SoundRam);

  IsM68KRunning = 0;

  scsp_init (SoundRam, &c68k_interrupt_handler, &scu_interrupt_handler);
  ScspInternalVars->scsptiming1 = 0;
  ScspInternalVars->scsptiming2 = 0;

  for (i = 0; i < MAX_BREAKPOINTS; i++)
    ScspInternalVars->codebreakpoint[i].addr = 0xFFFFFFFF;
  ScspInternalVars->numcodebreakpoints = 0;
  ScspInternalVars->BreakpointCallBack = ((void*)0);
  ScspInternalVars->inbreakpoint = 0;

  m68kexecptr = M68K->Exec;


  scspsoundlen = 44100 / 60;
  scsplines = 263;
  scspsoundbufs = 10;
  scspsoundbufsize = scspsoundlen * scspsoundbufs;
  if (scsp_alloc_bufs () < 0)
    return -1;


  scspsoundgenpos = 0;
  scspsoundoutleft = 0;
  scspframeaccurate = 0;

  return ScspChangeSoundCore (coreid);
}
