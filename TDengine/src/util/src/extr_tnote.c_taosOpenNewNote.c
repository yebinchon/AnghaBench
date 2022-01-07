
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosNoteFd ;
 scalar_t__ taosNoteLines ;
 scalar_t__ taosNoteMaxLines ;
 int taosNoteMutex ;
 int taosNoteOpenInProgress ;
 int taosNotePrint (char*) ;
 int taosThreadToOpenNewNote ;

int taosOpenNewNote()
{
    pthread_mutex_lock(&taosNoteMutex);

    if (taosNoteLines > taosNoteMaxLines && taosNoteOpenInProgress == 0) {
        taosNoteOpenInProgress = 1;

        taosNotePrint("===============  open new note  ==================");
        pthread_t pattern;
        pthread_attr_t attr;
        pthread_attr_init(&attr);
        pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);

        pthread_create(&pattern, &attr, taosThreadToOpenNewNote, ((void*)0));
        pthread_attr_destroy(&attr);
    }

    pthread_mutex_unlock(&taosNoteMutex);

    return taosNoteFd;
}
