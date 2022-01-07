; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_api.c_esp_efuse_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_batch_writing_mode = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_efuse_write_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @EFUSE_LOCK_ACQUIRE_RUCURSIVE()
  %9 = load i32, i32* @s_batch_writing_mode, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 (...) @esp_efuse_utility_reset()
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @esp_efuse_utility_write_reg(i32 %14, i32 %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @s_batch_writing_mode, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = call i64 (...) @esp_efuse_utility_apply_new_coding_scheme()
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @esp_efuse_utility_burn_efuses()
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %20
  %33 = call i32 (...) @esp_efuse_utility_reset()
  br label %34

34:                                               ; preds = %32, %13
  %35 = call i32 (...) @EFUSE_LOCK_RELEASE_RUCURSIVE()
  %36 = load i64, i64* %7, align 8
  ret i64 %36
}

declare dso_local i32 @EFUSE_LOCK_ACQUIRE_RUCURSIVE(...) #1

declare dso_local i32 @esp_efuse_utility_reset(...) #1

declare dso_local i64 @esp_efuse_utility_write_reg(i32, i32, i32) #1

declare dso_local i64 @esp_efuse_utility_apply_new_coding_scheme(...) #1

declare dso_local i32 @esp_efuse_utility_burn_efuses(...) #1

declare dso_local i32 @EFUSE_LOCK_RELEASE_RUCURSIVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
