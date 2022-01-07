
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_queue ;
 int g_size ;
 int memcpy (void*,int ,int ) ;

void GetLastItem(void *pvBuffer)
{
    memcpy(pvBuffer, g_queue, g_size);
}
