
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyOutState ;


 int CopySendData (int ,char*,int) ;

__attribute__((used)) static inline void
CopyFlushOutput(CopyOutState cstate, char *start, char *pointer)
{
 if (pointer > start)
 {
  CopySendData(cstate, start, pointer - start);
 }
}
