; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_print_cipher_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/scan/main/extr_scan.c_print_cipher_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_NONE\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_WEP40\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_WEP104\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_TKIP\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_CCMP\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_TKIP_CCMP\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Pairwise Cipher \09WIFI_CIPHER_TYPE_UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_NONE\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_WEP40\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_WEP104\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_TKIP\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_CCMP\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_TKIP_CCMP\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Group Cipher \09WIFI_CIPHER_TYPE_UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_cipher_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cipher_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %24 [
    i32 132, label %6
    i32 128, label %9
    i32 129, label %12
    i32 131, label %15
    i32 133, label %18
    i32 130, label %21
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %27

9:                                                ; preds = %2
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 @ESP_LOGI(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %12, %9, %6
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %47 [
    i32 132, label %29
    i32 128, label %32
    i32 129, label %35
    i32 131, label %38
    i32 133, label %41
    i32 130, label %44
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %50

32:                                               ; preds = %27
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %50

35:                                               ; preds = %27
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %50

38:                                               ; preds = %27
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 @ESP_LOGI(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %50

41:                                               ; preds = %27
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %50

44:                                               ; preds = %27
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44, %41, %38, %35, %32, %29
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
