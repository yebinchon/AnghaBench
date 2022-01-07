
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int source_t ;
struct TYPE_3__ {int weight; int maxweight; int minweight; scalar_t__ type; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 scalar_t__ PC_CheckTokenString (int *,char*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int ReadValue (int *,int *) ;
 scalar_t__ WT_BALANCE ;
 int qfalse ;
 int qtrue ;

int ReadFuzzyWeight(source_t *source, fuzzyseperator_t *fs)
{
 if (PC_CheckTokenString(source, "balance"))
 {
  fs->type = WT_BALANCE;
  if (!PC_ExpectTokenString(source, "(")) return qfalse;
  if (!ReadValue(source, &fs->weight)) return qfalse;
  if (!PC_ExpectTokenString(source, ",")) return qfalse;
  if (!ReadValue(source, &fs->minweight)) return qfalse;
  if (!PC_ExpectTokenString(source, ",")) return qfalse;
  if (!ReadValue(source, &fs->maxweight)) return qfalse;
  if (!PC_ExpectTokenString(source, ")")) return qfalse;
 }
 else
 {
  fs->type = 0;
  if (!ReadValue(source, &fs->weight)) return qfalse;
  fs->minweight = fs->weight;
  fs->maxweight = fs->weight;
 }
 if (!PC_ExpectTokenString(source, ";")) return qfalse;
 return qtrue;
}
