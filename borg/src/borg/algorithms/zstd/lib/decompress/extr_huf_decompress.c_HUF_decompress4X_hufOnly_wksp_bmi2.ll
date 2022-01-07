; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_hufOnly_wksp_bmi2.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_hufOnly_wksp_bmi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress4X_hufOnly_wksp_bmi2(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i32, i32* @dstSize_tooSmall, align 4
  %23 = call i64 @ERROR(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %58

24:                                               ; preds = %8
  %25 = load i64, i64* %14, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @corruption_detected, align 4
  %29 = call i64 @ERROR(i32 %28)
  store i64 %29, i64* %9, align 8
  br label %58

30:                                               ; preds = %24
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @HUF_selectDecoder(i64 %31, i64 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @HUF_decompress4X2_DCtx_wksp_bmi2(i32* %37, i8* %38, i64 %39, i8* %40, i64 %41, i8* %42, i64 %43, i32 %44)
  br label %56

46:                                               ; preds = %30
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @HUF_decompress4X1_DCtx_wksp_bmi2(i32* %47, i8* %48, i64 %49, i8* %50, i64 %51, i8* %52, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %36
  %57 = phi i64 [ %45, %36 ], [ %55, %46 ]
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %27, %21
  %59 = load i64, i64* %9, align 8
  ret i64 %59
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @HUF_selectDecoder(i64, i64) #1

declare dso_local i64 @HUF_decompress4X2_DCtx_wksp_bmi2(i32*, i8*, i64, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @HUF_decompress4X1_DCtx_wksp_bmi2(i32*, i8*, i64, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
