
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;


 int DATAMODEL_NATIVE ;
 int DIS_ISIZE_INSTR ;
 int dtrace_dis_isize (int *,int ,int ,int *) ;

int
dtrace_instr_size(uchar_t *instr)
{
 return (dtrace_dis_isize(instr, DIS_ISIZE_INSTR, DATAMODEL_NATIVE,
     ((void*)0)));
}
