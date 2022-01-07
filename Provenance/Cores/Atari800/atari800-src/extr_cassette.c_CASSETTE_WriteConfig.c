
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ CASSETTE_STATUS_NONE ;
 char* CASSETTE_filename ;
 scalar_t__ CASSETTE_status ;
 int CASSETTE_write_protect ;
 int fprintf (int *,char*,...) ;

void CASSETTE_WriteConfig(FILE *fp)
{
 fprintf(fp, "CASSETTE_FILENAME=%s\n", CASSETTE_filename);
 fprintf(fp, "CASSETTE_LOADED=%d\n", CASSETTE_status != CASSETTE_STATUS_NONE);
 fprintf(fp, "CASSETTE_WRITE_PROTECT=%d\n", CASSETTE_write_protect);
}
