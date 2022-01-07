
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int SSA_2_HB_TIME (int,int,int,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int parse_timing( char *line, int64_t *start, int64_t *stop )
{



    int start_hr, start_min, start_sec, start_centi;
    int end_hr, end_min, end_sec, end_centi;






    int numPartsRead = sscanf(line, "Dialogue:%*128[^,],"
        "%d:%d:%d.%d,"
        "%d:%d:%d.%d,",
        &start_hr, &start_min, &start_sec, &start_centi,
          &end_hr, &end_min, &end_sec, &end_centi );
    if ( numPartsRead != 8 )
        return 1;

    *start = SSA_2_HB_TIME(start_hr, start_min, start_sec, start_centi);
    *stop = SSA_2_HB_TIME( end_hr, end_min, end_sec, end_centi);

    return 0;
}
