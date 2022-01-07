
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTE_FILE_NAME_LEN ;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,char*) ;
 int taosCheckNoteIsOpen (char*) ;
 int taosNoteFileNum ;
 char* taosNoteName ;

void taosGetNoteName(char *fn)
{
    if (taosNoteFileNum > 1) {
        for (int i = 0; i < taosNoteFileNum; i++) {
            char fileName[NOTE_FILE_NAME_LEN];

            sprintf(fileName, "%s%d.0", fn, i);
            bool file1open = taosCheckNoteIsOpen(fileName);

            sprintf(fileName, "%s%d.1", fn, i);
            bool file2open = taosCheckNoteIsOpen(fileName);

            if (!file1open && !file2open) {
                sprintf(taosNoteName, "%s%d", fn, i);
                return;
            }
        }
    }

    strcpy(taosNoteName, fn);
}
