
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char wchar_t ;
typedef int fmtbuf ;
typedef int buf ;
typedef int UINT ;
struct TYPE_12__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_11__ {int Rows; int Columns; } ;
struct TYPE_10__ {int String; } ;
struct TYPE_9__ {int * Strings; } ;
typedef TYPE_1__ CTR ;
typedef TYPE_2__ CTC ;
typedef TYPE_3__ CT ;
typedef TYPE_4__ CONSOLE ;


 int CtEscapeCsv (char*,int,int ) ;
 void* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int MAX_SIZE ;
 int UniStrCat (char*,int,char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;

void CtPrintCsv(CT *ct, CONSOLE *c)
{
 UINT i, j;
 UINT num_columns = LIST_NUM(ct->Columns);
 wchar_t buf[MAX_SIZE*4];
 wchar_t fmtbuf[MAX_SIZE*4];


 buf[0] = 0;
 for(i=0; i<num_columns; i++)
 {
  CTC *ctc = LIST_DATA(ct->Columns, i);
  CtEscapeCsv(fmtbuf, sizeof(fmtbuf), ctc->String);
  UniStrCat(buf, sizeof(buf), fmtbuf);
  if(i != num_columns-1)
   UniStrCat(buf, sizeof(buf), L",");
 }
 c->Write(c, buf);


 for(j=0; j<LIST_NUM(ct->Rows); j++)
 {
  CTR *ctr = LIST_DATA(ct->Rows, j);
  buf[0] = 0;
  for(i=0; i<num_columns; i++)
  {
   CtEscapeCsv(fmtbuf, sizeof(fmtbuf), ctr->Strings[i]);
   UniStrCat(buf, sizeof(buf), fmtbuf);
   if(i != num_columns-1)
    UniStrCat(buf, sizeof(buf), L",");
  }
  c->Write(c, buf);
 }
}
