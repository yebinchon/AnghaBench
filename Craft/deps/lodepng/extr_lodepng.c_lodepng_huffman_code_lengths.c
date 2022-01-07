
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {unsigned int size; size_t* data; } ;
struct TYPE_13__ {TYPE_1__ symbols; } ;
typedef TYPE_2__ Coin ;


 int add_coins (TYPE_2__*,TYPE_2__*) ;
 unsigned int append_symbol_coins (TYPE_2__*,unsigned int const*,size_t,size_t) ;
 int cleanup_coins (TYPE_2__*,unsigned int) ;
 int coin_copy (TYPE_2__*,TYPE_2__*) ;
 int init_coins (TYPE_2__*,unsigned int) ;
 int lodepng_free (TYPE_2__*) ;
 scalar_t__ lodepng_malloc (int) ;
 int sort_coins (TYPE_2__*,unsigned int) ;

unsigned lodepng_huffman_code_lengths(unsigned* lengths, const unsigned* frequencies,
                                      size_t numcodes, unsigned maxbitlen)
{
  unsigned i, j;
  size_t sum = 0, numpresent = 0;
  unsigned error = 0;
  Coin* coins;
  Coin* prev_row;
  unsigned numcoins;
  unsigned coinmem;

  if(numcodes == 0) return 80;

  for(i = 0; i < numcodes; i++)
  {
    if(frequencies[i] > 0)
    {
      numpresent++;
      sum += frequencies[i];
    }
  }

  for(i = 0; i < numcodes; i++) lengths[i] = 0;






  if(numpresent == 0)
  {
    lengths[0] = lengths[1] = 1;
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



    coinmem = numpresent * 2;
    coins = (Coin*)lodepng_malloc(sizeof(Coin) * coinmem);
    prev_row = (Coin*)lodepng_malloc(sizeof(Coin) * coinmem);
    if(!coins || !prev_row)
    {
      lodepng_free(coins);
      lodepng_free(prev_row);
      return 83;
    }
    init_coins(coins, coinmem);
    init_coins(prev_row, coinmem);


    error = append_symbol_coins(coins, frequencies, numcodes, sum);
    numcoins = numpresent;
    sort_coins(coins, numcoins);
    if(!error)
    {
      unsigned numprev = 0;
      for(j = 1; j <= maxbitlen && !error; j++)
      {
        unsigned tempnum;
        Coin* tempcoins;

        tempcoins = prev_row; prev_row = coins; coins = tempcoins;
        tempnum = numprev; numprev = numcoins; numcoins = tempnum;

        cleanup_coins(coins, numcoins);
        init_coins(coins, numcoins);

        numcoins = 0;


        for(i = 0; i + 1 < numprev; i += 2)
        {

          Coin* coin = &coins[numcoins++];
          coin_copy(coin, &prev_row[i]);
          add_coins(coin, &prev_row[i + 1]);
        }

        if(j < maxbitlen)
        {
          error = append_symbol_coins(coins + numcoins, frequencies, numcodes, sum);
          numcoins += numpresent;
        }
        sort_coins(coins, numcoins);
      }
    }

    if(!error)
    {

      for(i = 0; i < numpresent - 1; i++)
      {
        Coin* coin = &coins[i];
        for(j = 0; j < coin->symbols.size; j++) lengths[coin->symbols.data[j]]++;
      }
    }

    cleanup_coins(coins, coinmem);
    lodepng_free(coins);
    cleanup_coins(prev_row, coinmem);
    lodepng_free(prev_row);
  }

  return error;
}
