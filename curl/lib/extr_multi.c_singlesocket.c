
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_sh_entry {unsigned int action; int transfers; int socketp; int users; scalar_t__ readers; scalar_t__ writers; } ;
struct Curl_multi {int sockhash; int socket_userp; int (* socket_cb ) (struct Curl_easy*,scalar_t__,unsigned int,int ,int ) ;} ;
struct Curl_easy {int numsocks; scalar_t__* sockets; unsigned int* actions; } ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLMcode ;


 int CURLM_OK ;
 int CURLM_OUT_OF_MEMORY ;
 unsigned int CURL_POLL_IN ;
 unsigned int CURL_POLL_NONE ;
 unsigned int CURL_POLL_OUT ;
 unsigned int CURL_POLL_REMOVE ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_hash_add (int *,char*,int,struct Curl_easy*) ;
 scalar_t__ Curl_hash_delete (int *,char*,int) ;
 int DEBUGASSERT (int *) ;
 int FALSE ;
 unsigned int GETSOCK_READSOCK (int) ;
 unsigned int GETSOCK_WRITESOCK (int) ;
 int MAX_SOCKSPEREASYHANDLE ;
 int TRUE ;
 int memcpy (int*,...) ;
 unsigned int multi_getsock (struct Curl_easy*,scalar_t__*) ;
 struct Curl_sh_entry* sh_addentry (int *,scalar_t__) ;
 int sh_delentry (struct Curl_sh_entry*,int *,scalar_t__) ;
 struct Curl_sh_entry* sh_getentry (int *,scalar_t__) ;
 int stub1 (struct Curl_easy*,scalar_t__,unsigned int,int ,int ) ;
 int stub2 (struct Curl_easy*,scalar_t__,unsigned int,int ,int ) ;

__attribute__((used)) static CURLMcode singlesocket(struct Curl_multi *multi,
                              struct Curl_easy *data)
{
  curl_socket_t socks[MAX_SOCKSPEREASYHANDLE];
  int i;
  struct Curl_sh_entry *entry;
  curl_socket_t s;
  int num;
  unsigned int curraction;
  int actions[MAX_SOCKSPEREASYHANDLE];

  for(i = 0; i< MAX_SOCKSPEREASYHANDLE; i++)
    socks[i] = CURL_SOCKET_BAD;



  curraction = multi_getsock(data, socks);






  for(i = 0; (i< MAX_SOCKSPEREASYHANDLE) &&
        (curraction & (GETSOCK_READSOCK(i) | GETSOCK_WRITESOCK(i)));
      i++) {
    unsigned int action = CURL_POLL_NONE;
    unsigned int prevaction = 0;
    unsigned int comboaction;
    bool sincebefore = FALSE;

    s = socks[i];


    entry = sh_getentry(&multi->sockhash, s);

    if(curraction & GETSOCK_READSOCK(i))
      action |= CURL_POLL_IN;
    if(curraction & GETSOCK_WRITESOCK(i))
      action |= CURL_POLL_OUT;

    actions[i] = action;
    if(entry) {

      int j;
      for(j = 0; j< data->numsocks; j++) {
        if(s == data->sockets[j]) {
          prevaction = data->actions[j];
          sincebefore = TRUE;
          break;
        }
      }
    }
    else {

      entry = sh_addentry(&multi->sockhash, s);
      if(!entry)

        return CURLM_OUT_OF_MEMORY;
    }
    if(sincebefore && (prevaction != action)) {

      if(prevaction & CURL_POLL_IN)
        entry->readers--;
      if(prevaction & CURL_POLL_OUT)
        entry->writers--;
      if(action & CURL_POLL_IN)
        entry->readers++;
      if(action & CURL_POLL_OUT)
        entry->writers++;
    }
    else if(!sincebefore) {

      entry->users++;
      if(action & CURL_POLL_IN)
        entry->readers++;
      if(action & CURL_POLL_OUT)
        entry->writers++;


      if(!Curl_hash_add(&entry->transfers, (char *)&data,
                        sizeof(struct Curl_easy *), data))
        return CURLM_OUT_OF_MEMORY;
    }

    comboaction = (entry->writers? CURL_POLL_OUT : 0) |
      (entry->readers ? CURL_POLL_IN : 0);


    if(sincebefore && (entry->action == comboaction))

      continue;

    if(multi->socket_cb)
      multi->socket_cb(data, s, comboaction, multi->socket_userp,
                       entry->socketp);

    entry->action = comboaction;
  }

  num = i;



  for(i = 0; i< data->numsocks; i++) {
    int j;
    bool stillused = FALSE;
    s = data->sockets[i];
    for(j = 0; j < num; j++) {
      if(s == socks[j]) {

        stillused = TRUE;
        break;
      }
    }
    if(stillused)
      continue;

    entry = sh_getentry(&multi->sockhash, s);


    if(entry) {
      int oldactions = data->actions[i];

      entry->users--;
      if(oldactions & CURL_POLL_OUT)
        entry->writers--;
      if(oldactions & CURL_POLL_IN)
        entry->readers--;
      if(!entry->users) {
        if(multi->socket_cb)
          multi->socket_cb(data, s, CURL_POLL_REMOVE,
                           multi->socket_userp,
                           entry->socketp);
        sh_delentry(entry, &multi->sockhash, s);
      }
      else {

        if(Curl_hash_delete(&entry->transfers, (char *)&data,
                            sizeof(struct Curl_easy *))) {
          DEBUGASSERT(((void*)0));
        }
      }
    }
  }

  memcpy(data->sockets, socks, num*sizeof(curl_socket_t));
  memcpy(data->actions, actions, num*sizeof(int));
  data->numsocks = num;
  return CURLM_OK;
}
