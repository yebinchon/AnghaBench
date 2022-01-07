
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth {unsigned long avail; unsigned long want; unsigned long picked; } ;


 unsigned long CURLAUTH_BASIC ;
 unsigned long CURLAUTH_BEARER ;
 unsigned long CURLAUTH_DIGEST ;
 unsigned long CURLAUTH_NEGOTIATE ;
 unsigned long CURLAUTH_NONE ;
 unsigned long CURLAUTH_NTLM ;
 unsigned long CURLAUTH_NTLM_WB ;
 unsigned long CURLAUTH_PICKNONE ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool pickoneauth(struct auth *pick, unsigned long mask)
{
  bool picked;

  unsigned long avail = pick->avail & pick->want & mask;
  picked = TRUE;



  if(avail & CURLAUTH_NEGOTIATE)
    pick->picked = CURLAUTH_NEGOTIATE;
  else if(avail & CURLAUTH_BEARER)
    pick->picked = CURLAUTH_BEARER;
  else if(avail & CURLAUTH_DIGEST)
    pick->picked = CURLAUTH_DIGEST;
  else if(avail & CURLAUTH_NTLM)
    pick->picked = CURLAUTH_NTLM;
  else if(avail & CURLAUTH_NTLM_WB)
    pick->picked = CURLAUTH_NTLM_WB;
  else if(avail & CURLAUTH_BASIC)
    pick->picked = CURLAUTH_BASIC;
  else {
    pick->picked = CURLAUTH_PICKNONE;
    picked = FALSE;
  }
  pick->avail = CURLAUTH_NONE;

  return picked;
}
