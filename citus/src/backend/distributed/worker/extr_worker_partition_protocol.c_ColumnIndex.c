
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;


 int Assert (int) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int SPI_ERROR_NOATTRIBUTE ;
 int SPI_fnumber (int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static int
ColumnIndex(TupleDesc rowDescriptor, const char *columnName)
{
 int columnIndex = SPI_fnumber(rowDescriptor, columnName);
 if (columnIndex == SPI_ERROR_NOATTRIBUTE)
 {
  ereport(ERROR, (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("could not find column name \"%s\"", columnName)));
 }

 Assert(columnIndex >= 1);
 return columnIndex;
}
