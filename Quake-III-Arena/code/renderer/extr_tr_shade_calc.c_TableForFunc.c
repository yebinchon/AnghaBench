
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int genFunc_t ;
struct TYPE_8__ {int (* Error ) (int ,char*,int,int ) ;} ;
struct TYPE_7__ {TYPE_1__* shader; } ;
struct TYPE_6__ {float* sinTable; float* triangleTable; float* squareTable; float* sawToothTable; float* inverseSawToothTable; } ;
struct TYPE_5__ {int name; } ;


 int ERR_DROP ;






 TYPE_4__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

__attribute__((used)) static float *TableForFunc( genFunc_t func )
{
 switch ( func )
 {
 case 130:
  return tr.sinTable;
 case 128:
  return tr.triangleTable;
 case 129:
  return tr.squareTable;
 case 131:
  return tr.sawToothTable;
 case 133:
  return tr.inverseSawToothTable;
 case 132:
 default:
  break;
 }

 ri.Error( ERR_DROP, "TableForFunc called with invalid function '%d' in shader '%s'\n", func, tess.shader->name );
 return ((void*)0);
}
