
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int keyword; } ;
typedef TYPE_1__ keywordHash_t ;


 int KeywordHash_Key (int ) ;

void KeywordHash_Add(keywordHash_t *table[], keywordHash_t *key) {
 int hash;

 hash = KeywordHash_Key(key->keyword);





 key->next = table[hash];
 table[hash] = key;
}
