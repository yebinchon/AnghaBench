; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_read_bytes.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_sdmmc_io_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_ARG_CMD53_READ = common dso_local global i32 0, align 4
@SD_ARG_CMD53_INCREMENT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_io_read_bytes(i32* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  br label %18

18:                                               ; preds = %46, %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i64, i64* %11, align 8
  %23 = and i64 %22, -4
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %13, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %11, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %14, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @SD_ARG_CMD53_READ, align 4
  %36 = load i32, i32* @SD_ARG_CMD53_INCREMENT, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @sdmmc_io_rw_extended(i32* %32, i64 %33, i64 %34, i32 %37, i32* %38, i64 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @ESP_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %6, align 8
  br label %58

46:                                               ; preds = %30
  %47 = load i64, i64* %14, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %9, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load i64, i64* @ESP_OK, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %44
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i64 @sdmmc_io_rw_extended(i32*, i64, i64, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
