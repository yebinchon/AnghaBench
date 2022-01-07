
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* rcc_type_ty ;
struct TYPE_3__ {int kind; } ;


 int ARRAY ;
 int CONST ;
 int ENUM ;
 int FLOAT ;
 int FUNCTION ;
 int INT ;
 int POINTER ;
 int STRUCT ;
 int UNION ;
 int UNSIGNED ;
 int VOID ;
 int VOLATILE ;
 int assert (int ) ;
 int caselabel (int ) ;
 int enum_list ;
 int field_list ;
 int fields ;
 int formals ;
 int identifier ;
 int ids ;
 int printf (char*) ;
 int tag ;
 int type ;
 int uid ;
 int uid_list ;
 int yy (int ,int ,int ) ;

__attribute__((used)) static void do_type(rcc_type_ty x) {

 switch (x->kind) {
 static char *typename = "type";
 caselabel(INT); break;
 caselabel(UNSIGNED); break;
 caselabel(FLOAT); break;
 caselabel(VOID); break;
 caselabel(POINTER);
  yy(POINTER,type,uid);
  break;
 caselabel(ENUM);
  yy(ENUM,tag,identifier);
  yy(ENUM,ids,enum_list);
  break;
 caselabel(STRUCT);
  yy(STRUCT,tag,identifier);
  yy(STRUCT,fields,field_list);
  break;
 caselabel(UNION);
  yy(UNION,tag,identifier);
  yy(UNION,fields,field_list);
  break;
 caselabel(ARRAY);
  yy(ARRAY,type,uid);
  break;
 caselabel(FUNCTION);
  yy(FUNCTION,type,uid);
  yy(FUNCTION,formals,uid_list);
  break;
 caselabel(CONST);
  yy(CONST,type,uid);
  break;
 caselabel(VOLATILE);
  yy(VOLATILE,type,uid);
  break;
 default: assert(0);
 }

 printf("</ul>\n");
}
