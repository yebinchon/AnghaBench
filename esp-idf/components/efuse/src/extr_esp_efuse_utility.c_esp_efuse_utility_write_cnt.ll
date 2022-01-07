; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_write_cnt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_write_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_OK_EFUSE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_utility_write_cnt(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @ESP_OK, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @esp_efuse_utility_read_reg(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %15, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @get_mask(i32 %25, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %16, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  %33 = xor i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %6
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i64*, i64** %15, align 8
  %40 = call i32 @set_cnt_in_reg(i32 %36, i32 %37, i32 %38, i64* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @write_reg(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %6
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i64*, i64** %15, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @ESP_OK_EFUSE_CNT, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local i32 @esp_efuse_utility_read_reg(i32, i32) #1

declare dso_local i32 @get_mask(i32, i32) #1

declare dso_local i32 @set_cnt_in_reg(i32, i32, i32, i64*) #1

declare dso_local i32 @write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
