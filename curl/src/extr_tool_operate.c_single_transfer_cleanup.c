
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct State {int * inglob; int uploadfile; int httpgetfields; int outfiles; int * urls; } ;
struct OperationConfig {struct State state; } ;


 int Curl_safefree (int ) ;
 int glob_cleanup (int *) ;

__attribute__((used)) static void single_transfer_cleanup(struct OperationConfig *config)
{
  if(config) {
    struct State *state = &config->state;
    if(state->urls) {

      glob_cleanup(state->urls);
      state->urls = ((void*)0);
    }
    Curl_safefree(state->outfiles);
    Curl_safefree(state->httpgetfields);
    Curl_safefree(state->uploadfile);
    if(state->inglob) {

      glob_cleanup(state->inglob);
      state->inglob = ((void*)0);
    }
  }
}
