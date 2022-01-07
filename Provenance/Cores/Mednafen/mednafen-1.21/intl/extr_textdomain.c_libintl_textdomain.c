
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _nl_current_default_domain ;
 char* _nl_default_default_domain ;
 int _nl_msg_cat_cntr ;
 int _nl_state_lock ;
 int free (char*) ;
 int gl_rwlock_unlock (int ) ;
 int gl_rwlock_wrlock (int ) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

char *
TEXTDOMAIN (const char *domainname)
{
  char *new_domain;
  char *old_domain;


  if (domainname == ((void*)0))
    return (char *) _nl_current_default_domain;

  gl_rwlock_wrlock (_nl_state_lock);

  old_domain = (char *) _nl_current_default_domain;


  if (domainname[0] == '\0'
      || strcmp (domainname, _nl_default_default_domain) == 0)
    {
      _nl_current_default_domain = _nl_default_default_domain;
      new_domain = (char *) _nl_current_default_domain;
    }
  else if (strcmp (domainname, old_domain) == 0)


    new_domain = old_domain;
  else
    {






      size_t len = strlen (domainname) + 1;
      new_domain = (char *) malloc (len);
      if (new_domain != ((void*)0))
 memcpy (new_domain, domainname, len);


      if (new_domain != ((void*)0))
 _nl_current_default_domain = new_domain;
    }




  if (new_domain != ((void*)0))
    {
      ++_nl_msg_cat_cntr;

      if (old_domain != new_domain && old_domain != _nl_default_default_domain)
 free (old_domain);
    }

  gl_rwlock_unlock (_nl_state_lock);

  return new_domain;
}
