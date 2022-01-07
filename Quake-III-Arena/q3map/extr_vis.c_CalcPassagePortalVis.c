
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePassages ;
 int PassageMemory () ;
 int PassagePortalFlow ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int _printf (char*,...) ;
 int numportals ;
 int qfalse ;
 int qtrue ;

void CalcPassagePortalVis(void)
{
 PassageMemory();
 RunThreadsOnIndividual (numportals*2, qtrue, CreatePassages);
 RunThreadsOnIndividual (numportals*2, qtrue, PassagePortalFlow);

}
