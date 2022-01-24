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
typedef  int /*<<< orphan*/  LAYER_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int /*<<< orphan*/  AVGPOOL ; 
 int /*<<< orphan*/  BATCHNORM ; 
 int /*<<< orphan*/  BLANK ; 
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  CONVOLUTIONAL ; 
 int /*<<< orphan*/  COST ; 
 int /*<<< orphan*/  CRNN ; 
 int /*<<< orphan*/  CROP ; 
 int /*<<< orphan*/  DECONVOLUTIONAL ; 
 int /*<<< orphan*/  DETECTION ; 
 int /*<<< orphan*/  DROPOUT ; 
 int /*<<< orphan*/  GRU ; 
 int /*<<< orphan*/  ISEG ; 
 int /*<<< orphan*/  L2NORM ; 
 int /*<<< orphan*/  LOCAL ; 
 int /*<<< orphan*/  LOGXENT ; 
 int /*<<< orphan*/  LSTM ; 
 int /*<<< orphan*/  MAXPOOL ; 
 int /*<<< orphan*/  NETWORK ; 
 int /*<<< orphan*/  NORMALIZATION ; 
 int /*<<< orphan*/  REGION ; 
 int /*<<< orphan*/  REORG ; 
 int /*<<< orphan*/  RNN ; 
 int /*<<< orphan*/  ROUTE ; 
 int /*<<< orphan*/  SHORTCUT ; 
 int /*<<< orphan*/  SOFTMAX ; 
 int /*<<< orphan*/  UPSAMPLE ; 
 int /*<<< orphan*/  YOLO ; 
 scalar_t__ FUNC0 (char*,char*) ; 

LAYER_TYPE FUNC1(char * type)
{

    if (FUNC0(type, "[shortcut]")==0) return SHORTCUT;
    if (FUNC0(type, "[crop]")==0) return CROP;
    if (FUNC0(type, "[cost]")==0) return COST;
    if (FUNC0(type, "[detection]")==0) return DETECTION;
    if (FUNC0(type, "[region]")==0) return REGION;
    if (FUNC0(type, "[yolo]")==0) return YOLO;
    if (FUNC0(type, "[iseg]")==0) return ISEG;
    if (FUNC0(type, "[local]")==0) return LOCAL;
    if (FUNC0(type, "[conv]")==0
            || FUNC0(type, "[convolutional]")==0) return CONVOLUTIONAL;
    if (FUNC0(type, "[deconv]")==0
            || FUNC0(type, "[deconvolutional]")==0) return DECONVOLUTIONAL;
    if (FUNC0(type, "[activation]")==0) return ACTIVE;
    if (FUNC0(type, "[logistic]")==0) return LOGXENT;
    if (FUNC0(type, "[l2norm]")==0) return L2NORM;
    if (FUNC0(type, "[net]")==0
            || FUNC0(type, "[network]")==0) return NETWORK;
    if (FUNC0(type, "[crnn]")==0) return CRNN;
    if (FUNC0(type, "[gru]")==0) return GRU;
    if (FUNC0(type, "[lstm]") == 0) return LSTM;
    if (FUNC0(type, "[rnn]")==0) return RNN;
    if (FUNC0(type, "[conn]")==0
            || FUNC0(type, "[connected]")==0) return CONNECTED;
    if (FUNC0(type, "[max]")==0
            || FUNC0(type, "[maxpool]")==0) return MAXPOOL;
    if (FUNC0(type, "[reorg]")==0) return REORG;
    if (FUNC0(type, "[avg]")==0
            || FUNC0(type, "[avgpool]")==0) return AVGPOOL;
    if (FUNC0(type, "[dropout]")==0) return DROPOUT;
    if (FUNC0(type, "[lrn]")==0
            || FUNC0(type, "[normalization]")==0) return NORMALIZATION;
    if (FUNC0(type, "[batchnorm]")==0) return BATCHNORM;
    if (FUNC0(type, "[soft]")==0
            || FUNC0(type, "[softmax]")==0) return SOFTMAX;
    if (FUNC0(type, "[route]")==0) return ROUTE;
    if (FUNC0(type, "[upsample]")==0) return UPSAMPLE;
    return BLANK;
}