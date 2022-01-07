
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TUBE ;


 int TubeFlushEx (int *,int) ;

void TubeFlush(TUBE *t)
{
 TubeFlushEx(t, 0);
}
