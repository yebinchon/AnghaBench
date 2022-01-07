
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_values ;


 int Box (int,int,int,int,int,int) ;
 int FALSE ;
 int Select (int,int,char const**,int *,int *,int *,int *,int,int,int,int,int,int ,int *,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int BasicUISelectInt(int default_value, int min_value, int max_value)
{
 static char item_values[100][4];
 static const char *items[100];
 int value;
 int nitems;
 int nrows;
 int ncolumns;
 int x1, y1, x2, y2;
 if (min_value < 0 || max_value > 99 || min_value > max_value)
  return default_value;
 nitems = 0;
 for (value = min_value; value <= max_value; value++) {
  items[nitems] = item_values[nitems];
  snprintf(item_values[nitems], sizeof(item_values[0]), "%2d", value);
  nitems++;
 }
 if (nitems <= 10) {
  nrows = nitems;
  ncolumns = 1;
 }
 else {
  nrows = 10;
  ncolumns = (nitems + 9) / 10;
 }
 x1 = (39 - 3 * ncolumns) >> 1;
 y1 = (22 - nrows) >> 1;
 x2 = x1 + 3 * ncolumns;
 y2 = y1 + nrows + 1;
 Box(0x9a, 0x94, x1, y1, x2, y2);
 value = Select((default_value >= min_value && default_value <= max_value) ? default_value - min_value : 0,
  nitems, items, ((void*)0), ((void*)0), ((void*)0), ((void*)0), nrows, ncolumns, x1 + 1, y1 + 1, 2, FALSE, ((void*)0), ((void*)0));
 return value >= 0 ? value + min_value : default_value;
}
