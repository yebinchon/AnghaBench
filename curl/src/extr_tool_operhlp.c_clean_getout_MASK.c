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
struct getout {struct getout* infile; struct getout* outfile; struct getout* url; struct getout* next; } ;
struct OperationConfig {struct getout* url_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct getout*) ; 

void FUNC1(struct OperationConfig *config)
{
  if(config) {
    struct getout *next;
    struct getout *node = config->url_list;

    while(node) {
      next = node->next;
      FUNC0(node->url);
      FUNC0(node->outfile);
      FUNC0(node->infile);
      FUNC0(node);
      node = next;
    }
    config->url_list = NULL;
  }
}