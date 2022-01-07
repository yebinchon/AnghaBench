; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_write_blocks.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_write_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@SD_ARG_CMD53_WRITE = common dso_local global i32 0, align 4
@SD_ARG_CMD53_INCREMENT = common dso_local global i32 0, align 4
@SD_ARG_CMD53_BLOCK_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdmmc_io_write_blocks(i32* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %12, 4
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %16, i32* %6, align 4
  br label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SD_ARG_CMD53_WRITE, align 4
  %22 = load i32, i32* @SD_ARG_CMD53_INCREMENT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SD_ARG_CMD53_BLOCK_MODE, align 4
  %25 = or i32 %23, %24
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @sdmmc_io_rw_extended(i32* %18, i32 %19, i32 %20, i32 %25, i8* %26, i64 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %17, %15
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @sdmmc_io_rw_extended(i32*, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
