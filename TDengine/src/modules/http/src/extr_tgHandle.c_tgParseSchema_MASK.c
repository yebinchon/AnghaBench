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
typedef  int /*<<< orphan*/  cJSON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(char *content, char*fileName) {
  cJSON *root = FUNC4(content);
  if (root == NULL) {
    FUNC5("failed to parse telegraf schema file:%s, invalid json format, content:%s", fileName, content);
    return -1;
  }
  int size = 0;
  cJSON *metrics = FUNC3(root, "metrics");
  if (metrics != NULL) {
    size = FUNC2(metrics);
    if (size <= 0) {
      FUNC5("failed to parse telegraf schema file:%s, metrics size is 0", fileName);
      FUNC0(root);
      return -1;
    }

    FUNC6(size);
    for (int i = 0; i < size; i++) {
      cJSON *metric = FUNC1(metrics, i);
      if (metric != NULL) {
        FUNC7(metric);
      }
    }
  } else {
    size = 1;
    FUNC6(size);
    FUNC7(root);
  }

  FUNC0(root);
  return size;
}