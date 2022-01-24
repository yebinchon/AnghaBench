#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct buffer {int offset; char* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct buffer) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int,char const**) ; 

__attribute__((used)) static struct buffer FUNC5(struct buffer buff,
      const char **ident,
      size_t *len, const char **error)
{
   char c = '\0';

   if (FUNC2(buff))
   {
      FUNC4(buff.offset, error);
      return buff;
   }

   *ident = buff.data + buff.offset;
   *len   = 0;
   FUNC3(buff, &c, error);

   if (*error)
      goto clean;
   if (!FUNC0((int)c))
      return buff;

   buff.offset++;
   *len = *len + 1;
   FUNC3(buff, &c, error);

   while (!*error)
   {
      if (!(FUNC0((int)c) || FUNC1((int)c) || c == '_'))
         break;
      buff.offset++;
      *len = *len + 1;
      FUNC3(buff, &c, error);
   }

clean:
   return buff;
}