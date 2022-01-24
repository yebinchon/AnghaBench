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
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int /*<<< orphan*/  ELU ; 
 int /*<<< orphan*/  HARDTAN ; 
 int /*<<< orphan*/  LEAKY ; 
 int /*<<< orphan*/  LHTAN ; 
 int /*<<< orphan*/  LINEAR ; 
 int /*<<< orphan*/  LOGGY ; 
 int /*<<< orphan*/  LOGISTIC ; 
 int /*<<< orphan*/  PLSE ; 
 int /*<<< orphan*/  RAMP ; 
 int /*<<< orphan*/  RELIE ; 
 int /*<<< orphan*/  RELU ; 
 int /*<<< orphan*/  SELU ; 
 int /*<<< orphan*/  STAIR ; 
 int /*<<< orphan*/  TANH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 

ACTIVATION FUNC2(char *s)
{
    if (FUNC1(s, "logistic")==0) return LOGISTIC;
    if (FUNC1(s, "loggy")==0) return LOGGY;
    if (FUNC1(s, "relu")==0) return RELU;
    if (FUNC1(s, "elu")==0) return ELU;
    if (FUNC1(s, "selu")==0) return SELU;
    if (FUNC1(s, "relie")==0) return RELIE;
    if (FUNC1(s, "plse")==0) return PLSE;
    if (FUNC1(s, "hardtan")==0) return HARDTAN;
    if (FUNC1(s, "lhtan")==0) return LHTAN;
    if (FUNC1(s, "linear")==0) return LINEAR;
    if (FUNC1(s, "ramp")==0) return RAMP;
    if (FUNC1(s, "leaky")==0) return LEAKY;
    if (FUNC1(s, "tanh")==0) return TANH;
    if (FUNC1(s, "stair")==0) return STAIR;
    FUNC0(stderr, "Couldn't find activation function %s, going with ReLU\n", s);
    return RELU;
}