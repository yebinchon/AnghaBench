
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int TupleDesc ;
struct TYPE_6__ {int * vals; int tupdesc; } ;
struct TYPE_5__ {int query_host_port; int query_host_name; } ;
typedef int * MemoryContext ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__ CitusDistStat ;


 int * CurrentMemoryContext ;
 TYPE_1__* HeapTupleToCitusDistStat (int *,int ) ;
 int * MemoryContextSwitchTo (int *) ;
 int * NIL ;
 int SPI_OK_CONNECT ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int * SPI_copytuple (int ) ;
 int SPI_execute (char const*,int,int ) ;
 int SPI_finish () ;
 size_t SPI_processed ;
 TYPE_3__* SPI_tuptable ;
 int WARNING ;
 int cstring_to_text (char const*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int * lappend (int *,TYPE_1__*) ;

__attribute__((used)) static List *
LocalNodeCitusDistStat(const char *statQuery, const char *hostname, int port)
{
 List *localNodeCitusDistStatList = NIL;
 int spiConnectionResult = 0;
 int spiQueryResult = 0;
 bool readOnly = 1;
 uint32 rowIndex = 0;

 MemoryContext upperContext = CurrentMemoryContext, oldContext = ((void*)0);

 spiConnectionResult = SPI_connect();
 if (spiConnectionResult != SPI_OK_CONNECT)
 {
  ereport(WARNING, (errmsg("could not connect to SPI manager to get "
         "the local stat activity")));

  SPI_finish();

  return NIL;
 }

 spiQueryResult = SPI_execute(statQuery, readOnly, 0);
 if (spiQueryResult != SPI_OK_SELECT)
 {
  ereport(WARNING, (errmsg("execution was not successful while trying to get "
         "the local stat activity")));

  SPI_finish();

  return NIL;
 }
 oldContext = MemoryContextSwitchTo(upperContext);

 for (rowIndex = 0; rowIndex < SPI_processed; rowIndex++)
 {
  HeapTuple row = ((void*)0);
  TupleDesc rowDescriptor = SPI_tuptable->tupdesc;
  CitusDistStat *citusDistStat = ((void*)0);


  row = SPI_copytuple(SPI_tuptable->vals[rowIndex]);
  citusDistStat = HeapTupleToCitusDistStat(row, rowDescriptor);





  citusDistStat->query_host_name = cstring_to_text(hostname);
  citusDistStat->query_host_port = port;

  localNodeCitusDistStatList = lappend(localNodeCitusDistStatList, citusDistStat);
 }

 MemoryContextSwitchTo(oldContext);

 SPI_finish();

 return localNodeCitusDistStatList;
}
