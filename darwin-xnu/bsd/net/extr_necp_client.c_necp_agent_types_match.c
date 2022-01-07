
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NETAGENT_DOMAINSIZE ;
 int NETAGENT_TYPESIZE ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static inline bool
necp_agent_types_match(const char *agent_domain1, const char *agent_type1,
        const char *agent_domain2, const char *agent_type2)
{
 return ((strlen(agent_domain1) == 0 ||
    strncmp(agent_domain2, agent_domain1, NETAGENT_DOMAINSIZE) == 0) &&
   (strlen(agent_type1) == 0 ||
    strncmp(agent_type2, agent_type1, NETAGENT_TYPESIZE) == 0));
}
