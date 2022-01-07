
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int b; int g; int r; } ;
struct TYPE_5__ {int b; int g; int r; } ;
typedef TYPE_1__ COLOR ;


 int gouraudTable () ;
 double interpolate (int ,int ,int) ;
 TYPE_2__ leftColumnColor ;

__attribute__((used)) static void gouraudLineSetup(double * redstep, double * greenstep, double * bluestep, int length, COLOR table1, COLOR table2) {

 gouraudTable();

 *redstep =interpolate(table1.r,table2.r,length);
 *greenstep =interpolate(table1.g,table2.g,length);
 *bluestep =interpolate(table1.b,table2.b,length);

 leftColumnColor.r = table1.r;
 leftColumnColor.g = table1.g;
 leftColumnColor.b = table1.b;
}
