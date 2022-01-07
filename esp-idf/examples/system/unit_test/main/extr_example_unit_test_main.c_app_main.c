
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numbers ;


 int* calloc (int const,int) ;
 int const esp_random () ;
 int free (int*) ;
 int printf (char*,...) ;
 int testable_mean (int*,int const) ;

void app_main(void)
{
    const int count = 32;
    const int max = 100;

    printf("In main application. Collecting %d random numbers from 1 to %d:\n", count, max);
    int *numbers = calloc(count, sizeof(numbers[0]));
    for (int i = 0; i < count; ++i) {
        numbers[i] = 1 + esp_random() % (max - 1);
        printf("%4d ", numbers[i]);
        if ((i + 1) % 10 == 0) {
            printf("\n");
        }
    }

    int mean = testable_mean(numbers, count);
    printf("\nMean: %d\n", mean);
    free(numbers);
}
