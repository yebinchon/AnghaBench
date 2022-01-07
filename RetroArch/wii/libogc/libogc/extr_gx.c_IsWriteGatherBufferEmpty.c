
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int mfwpar () ;

__attribute__((used)) static __inline__ BOOL IsWriteGatherBufferEmpty()
{
 return !(mfwpar()&1);
}
