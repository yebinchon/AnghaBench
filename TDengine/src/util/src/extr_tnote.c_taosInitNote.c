
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 char* logDir ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 int taosNotePrint (char*) ;
 scalar_t__ taosOpenNoteWithMaxLines (char*,int,int) ;

void taosInitNote(int numOfNoteLines, int maxNotes)
{
    char temp[128] = { 0 };
    sprintf(temp, "%s/taosnote", logDir);
    if (taosOpenNoteWithMaxLines(temp, numOfNoteLines, maxNotes) < 0)
        fprintf(stderr, "failed to init note file\n");

    taosNotePrint("==================================================");
    taosNotePrint("===================  new note  ===================");
    taosNotePrint("==================================================");
}
