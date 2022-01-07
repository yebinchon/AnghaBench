
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_RGB ;
 int AUX_SINGLE ;
 int WIN_SIZE ;
 int auxInitDisplayMode (int) ;
 int auxInitPosition (int ,int ,int ,int ) ;
 int auxInitWindow (char*) ;

void InitWindow (void)
{
    auxInitDisplayMode (AUX_SINGLE | AUX_RGB);
    auxInitPosition (0, 0, WIN_SIZE, WIN_SIZE);
    auxInitWindow ("qcsg");
}
