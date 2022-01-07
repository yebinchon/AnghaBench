
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;


 int g_free (int ) ;
 int g_object_unref (int ) ;

__attribute__((used)) static void
free_drive(gpointer drive)
{



        g_object_unref(drive);

}
