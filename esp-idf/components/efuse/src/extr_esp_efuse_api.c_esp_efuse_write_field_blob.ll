; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_field_blob.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_field_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@s_batch_writing_mode = common dso_local global i32 0, align 4
@esp_efuse_utility_write_blob = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_efuse_write_field_blob(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 (...) @EFUSE_LOCK_ACQUIRE_RUCURSIVE()
  %9 = load i64, i64* @ESP_OK, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32**, i32*** %4, align 8
  %11 = icmp eq i32** %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %19, i64* %7, align 8
  br label %48

20:                                               ; preds = %15
  %21 = load i32, i32* @s_batch_writing_mode, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @esp_efuse_utility_reset()
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32**, i32*** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @esp_efuse_utility_write_blob, align 4
  %30 = call i64 @esp_efuse_utility_process(i32** %26, i8* %27, i64 %28, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* @s_batch_writing_mode, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = call i64 (...) @esp_efuse_utility_apply_new_coding_scheme()
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @esp_efuse_utility_burn_efuses()
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = call i32 (...) @esp_efuse_utility_reset()
  br label %47

47:                                               ; preds = %45, %25
  br label %48

48:                                               ; preds = %47, %18
  %49 = call i32 (...) @EFUSE_LOCK_RELEASE_RUCURSIVE()
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local i32 @EFUSE_LOCK_ACQUIRE_RUCURSIVE(...) #1

declare dso_local i32 @esp_efuse_utility_reset(...) #1

declare dso_local i64 @esp_efuse_utility_process(i32**, i8*, i64, i32) #1

declare dso_local i64 @esp_efuse_utility_apply_new_coding_scheme(...) #1

declare dso_local i32 @esp_efuse_utility_burn_efuses(...) #1

declare dso_local i32 @EFUSE_LOCK_RELEASE_RUCURSIVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
