
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Program {int pmt_found; } ;
typedef int MpegTSContext ;


 struct Program* get_program (int *,unsigned int) ;

__attribute__((used)) static void set_pmt_found(MpegTSContext *ts, unsigned int programid)
{
    struct Program *p = get_program(ts, programid);
    if (!p)
        return;

    p->pmt_found = 1;
}
