
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int options; scalar_t__ truncate; scalar_t__ index_cleanup; } ;
struct TYPE_8__ {char* data; int len; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ CitusVacuumParams ;


 int Assert (int) ;
 int VACOPT_ANALYZE ;
 int VACOPT_DISABLE_PAGE_SKIPPING ;
 int VACOPT_FREEZE ;
 int VACOPT_FULL ;
 int VACOPT_SKIP_LOCKED ;
 scalar_t__ VACOPT_TERNARY_DEFAULT ;
 scalar_t__ VACOPT_TERNARY_ENABLED ;
 int VACOPT_VACUUM ;
 int VACOPT_VERBOSE ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static StringInfo
DeparseVacuumStmtPrefix(CitusVacuumParams vacuumParams)
{
 int vacuumFlags = vacuumParams.options;
 StringInfo vacuumPrefix = makeStringInfo();


 if (vacuumFlags & VACOPT_VACUUM)
 {
  appendStringInfoString(vacuumPrefix, "VACUUM ");
  vacuumFlags &= ~VACOPT_VACUUM;
 }
 else
 {
  Assert((vacuumFlags & VACOPT_ANALYZE) != 0);

  appendStringInfoString(vacuumPrefix, "ANALYZE ");
  vacuumFlags &= ~VACOPT_ANALYZE;

  if (vacuumFlags & VACOPT_VERBOSE)
  {
   appendStringInfoString(vacuumPrefix, "VERBOSE ");
   vacuumFlags &= ~VACOPT_VERBOSE;
  }
 }


 if (vacuumFlags == 0




  )
 {
  return vacuumPrefix;
 }


 appendStringInfoChar(vacuumPrefix, '(');

 if (vacuumFlags & VACOPT_ANALYZE)
 {
  appendStringInfoString(vacuumPrefix, "ANALYZE,");
 }

 if (vacuumFlags & VACOPT_DISABLE_PAGE_SKIPPING)
 {
  appendStringInfoString(vacuumPrefix, "DISABLE_PAGE_SKIPPING,");
 }

 if (vacuumFlags & VACOPT_FREEZE)
 {
  appendStringInfoString(vacuumPrefix, "FREEZE,");
 }

 if (vacuumFlags & VACOPT_FULL)
 {
  appendStringInfoString(vacuumPrefix, "FULL,");
 }

 if (vacuumFlags & VACOPT_VERBOSE)
 {
  appendStringInfoString(vacuumPrefix, "VERBOSE,");
 }
 vacuumPrefix->data[vacuumPrefix->len - 1] = ')';

 appendStringInfoChar(vacuumPrefix, ' ');

 return vacuumPrefix;
}
