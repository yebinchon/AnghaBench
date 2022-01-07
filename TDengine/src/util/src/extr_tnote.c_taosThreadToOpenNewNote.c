
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTE_FILE_NAME_LEN ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEEK_SET ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int lseek (int,int ,int ) ;
 int open (char*,int,int) ;
 int sprintf (char*,char*,char*,int) ;
 int taosCloseNoteByFd (int) ;
 int taosLockNote (int) ;
 int taosNoteFd ;
 int taosNoteFlag ;
 scalar_t__ taosNoteLines ;
 char* taosNoteName ;
 scalar_t__ taosNoteOpenInProgress ;
 int taosNotePrint (char*) ;
 int umask (int ) ;

void *taosThreadToOpenNewNote(void *param)
{
    char name[NOTE_FILE_NAME_LEN];

    taosNoteFlag ^= 1;
    taosNoteLines = 0;
    sprintf(name, "%s.%d", taosNoteName, taosNoteFlag);

    umask(0);

    int fd = open(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
    taosLockNote(fd);
    lseek(fd, 0, SEEK_SET);

    int oldFd = taosNoteFd;
    taosNoteFd = fd;
    taosNoteLines = 0;
    taosNoteOpenInProgress = 0;
    taosNotePrint("===============  new note is opened  =============");

    taosCloseNoteByFd(oldFd);
    return ((void*)0);
}
