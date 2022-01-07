
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_flowhash; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline int
infc_cmp(const struct inpcb *inp1, const struct inpcb *inp2)
{
 return (memcmp(&(inp1->inp_flowhash), &(inp2->inp_flowhash),
     sizeof(inp1->inp_flowhash)));
}
