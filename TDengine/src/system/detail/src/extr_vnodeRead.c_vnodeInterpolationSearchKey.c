
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TSKEY ;



int vnodeInterpolationSearchKey(char *pValue, int num, TSKEY key, int order) {
  int firstPos, lastPos, midPos = -1;
  int delta, numOfPoints;
  TSKEY *keyList;

  keyList = (TSKEY *)pValue;
  firstPos = 0;
  lastPos = num - 1;

  if (order == 0) {

    while (1) {
      if (key >= keyList[lastPos]) return lastPos;
      if (key == keyList[firstPos]) return firstPos;
      if (key < keyList[firstPos]) return firstPos - 1;

      numOfPoints = lastPos - firstPos + 1;
      delta = keyList[lastPos] - keyList[firstPos];
      midPos = (key - keyList[firstPos]) / delta * numOfPoints + firstPos;

      if (key < keyList[midPos]) {
        lastPos = midPos - 1;
      } else if (key > keyList[midPos]) {
        firstPos = midPos + 1;
      } else {
        break;
      }
    }

  } else {

    while (1) {
      if (key <= keyList[firstPos]) return firstPos;
      if (key == keyList[lastPos]) return lastPos;

      if (key > keyList[lastPos]) {
        lastPos = lastPos + 1;
        if (lastPos >= num) return -1;
      }

      numOfPoints = lastPos - firstPos + 1;
      delta = keyList[lastPos] - keyList[firstPos];
      midPos = (key - keyList[firstPos]) / delta * numOfPoints + firstPos;

      if (key < keyList[midPos]) {
        lastPos = midPos - 1;
      } else if (key > keyList[midPos]) {
        firstPos = midPos + 1;
      } else {
        break;
      }
    }
  }

  return midPos;
}
