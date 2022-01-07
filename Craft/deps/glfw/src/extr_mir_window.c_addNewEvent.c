
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MirSurface ;
typedef int MirEvent ;


 int enqueueEvent (int const*,void*) ;

__attribute__((used)) static void addNewEvent(MirSurface* surface, const MirEvent* event, void* context)
{
    enqueueEvent(event, context);
}
