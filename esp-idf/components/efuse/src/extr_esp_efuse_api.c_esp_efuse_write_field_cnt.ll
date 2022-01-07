; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_field_cnt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_field_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@s_batch_writing_mode = common dso_local global i32 0, align 4
@esp_efuse_utility_write_cnt = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"The required number of bits can not be set. [Not set %d]\00", align 1
@ESP_ERR_EFUSE_CNT_IS_FULL = common dso_local global i64 0, align 8
@ESP_OK_EFUSE_CNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_efuse_write_field_cnt(i32** %0, i64 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @EFUSE_LOCK_ACQUIRE_RUCURSIVE()
  %7 = load i64, i64* @ESP_OK, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %14, i64* %5, align 8
  br label %55

15:                                               ; preds = %10
  %16 = load i32, i32* @s_batch_writing_mode, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @esp_efuse_utility_reset()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32**, i32*** %3, align 8
  %22 = load i32, i32* @esp_efuse_utility_write_cnt, align 4
  %23 = call i64 @esp_efuse_utility_process(i32** %21, i64* %4, i32 0, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @ESP_ERR_EFUSE_CNT_IS_FULL, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ESP_OK_EFUSE_CNT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @ESP_OK, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* @s_batch_writing_mode, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ESP_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call i64 (...) @esp_efuse_utility_apply_new_coding_scheme()
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @esp_efuse_utility_burn_efuses()
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = call i32 (...) @esp_efuse_utility_reset()
  br label %54

54:                                               ; preds = %52, %37
  br label %55

55:                                               ; preds = %54, %13
  %56 = call i32 (...) @EFUSE_LOCK_RELEASE_RUCURSIVE()
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @EFUSE_LOCK_ACQUIRE_RUCURSIVE(...) #1

declare dso_local i32 @esp_efuse_utility_reset(...) #1

declare dso_local i64 @esp_efuse_utility_process(i32**, i64*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @esp_efuse_utility_apply_new_coding_scheme(...) #1

declare dso_local i32 @esp_efuse_utility_burn_efuses(...) #1

declare dso_local i32 @EFUSE_LOCK_RELEASE_RUCURSIVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
