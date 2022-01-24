#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {unsigned int size; size_t* data; } ;
struct TYPE_13__ {TYPE_1__ symbols; } ;
typedef  TYPE_2__ Coin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 unsigned int FUNC1 (TYPE_2__*,unsigned int const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 

unsigned FUNC8(unsigned* lengths, const unsigned* frequencies,
                                      size_t numcodes, unsigned maxbitlen)
{
  unsigned i, j;
  size_t sum = 0, numpresent = 0;
  unsigned error = 0;
  Coin* coins; /*the coins of the currently calculated row*/
  Coin* prev_row; /*the previous row of coins*/
  unsigned numcoins;
  unsigned coinmem;

  if(numcodes == 0) return 80; /*error: a tree of 0 symbols is not supposed to be made*/

  for(i = 0; i < numcodes; i++)
  {
    if(frequencies[i] > 0)
    {
      numpresent++;
      sum += frequencies[i];
    }
  }

  for(i = 0; i < numcodes; i++) lengths[i] = 0;

  /*ensure at least two present symbols. There should be at least one symbol
  according to RFC 1951 section 3.2.7. To decoders incorrectly require two. To
  make these work as well ensure there are at least two symbols. The
  Package-Merge code below also doesn't work correctly if there's only one
  symbol, it'd give it the theoritical 0 bits but in practice zlib wants 1 bit*/
  if(numpresent == 0)
  {
    lengths[0] = lengths[1] = 1; /*note that for RFC 1951 section 3.2.7, only lengths[0] = 1 is needed*/
  }
  else if(numpresent == 1)
  {
    for(i = 0; i < numcodes; i++)
    {
      if(frequencies[i])
      {
        lengths[i] = 1;
        lengths[i == 0 ? 1 : 0] = 1;
        break;
      }
    }
  }
  else
  {
    /*Package-Merge algorithm represented by coin collector's problem
    For every symbol, maxbitlen coins will be created*/

    coinmem = numpresent * 2; /*max amount of coins needed with the current algo*/
    coins = (Coin*)FUNC6(sizeof(Coin) * coinmem);
    prev_row = (Coin*)FUNC6(sizeof(Coin) * coinmem);
    if(!coins || !prev_row)
    {
      FUNC5(coins);
      FUNC5(prev_row);
      return 83; /*alloc fail*/
    }
    FUNC4(coins, coinmem);
    FUNC4(prev_row, coinmem);

    /*first row, lowest denominator*/
    error = FUNC1(coins, frequencies, numcodes, sum);
    numcoins = numpresent;
    FUNC7(coins, numcoins);
    if(!error)
    {
      unsigned numprev = 0;
      for(j = 1; j <= maxbitlen && !error; j++) /*each of the remaining rows*/
      {
        unsigned tempnum;
        Coin* tempcoins;
        /*swap prev_row and coins, and their amounts*/
        tempcoins = prev_row; prev_row = coins; coins = tempcoins;
        tempnum = numprev; numprev = numcoins; numcoins = tempnum;

        FUNC2(coins, numcoins);
        FUNC4(coins, numcoins);

        numcoins = 0;

        /*fill in the merged coins of the previous row*/
        for(i = 0; i + 1 < numprev; i += 2)
        {
          /*merge prev_row[i] and prev_row[i + 1] into new coin*/
          Coin* coin = &coins[numcoins++];
          FUNC3(coin, &prev_row[i]);
          FUNC0(coin, &prev_row[i + 1]);
        }
        /*fill in all the original symbols again*/
        if(j < maxbitlen)
        {
          error = FUNC1(coins + numcoins, frequencies, numcodes, sum);
          numcoins += numpresent;
        }
        FUNC7(coins, numcoins);
      }
    }

    if(!error)
    {
      /*calculate the lenghts of each symbol, as the amount of times a coin of each symbol is used*/
      for(i = 0; i < numpresent - 1; i++)
      {
        Coin* coin = &coins[i];
        for(j = 0; j < coin->symbols.size; j++) lengths[coin->symbols.data[j]]++;
      }
    }

    FUNC2(coins, coinmem);
    FUNC5(coins);
    FUNC2(prev_row, coinmem);
    FUNC5(prev_row);
  }

  return error;
}