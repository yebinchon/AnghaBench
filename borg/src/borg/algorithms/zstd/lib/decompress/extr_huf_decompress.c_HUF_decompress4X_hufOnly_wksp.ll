; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_hufOnly_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_hufOnly_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress4X_hufOnly_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i32, i32* @dstSize_tooSmall, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %8, align 8
  br label %54

22:                                               ; preds = %7
  %23 = load i64, i64* %13, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @corruption_detected, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %8, align 8
  br label %54

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @HUF_selectDecoder(i64 %29, i64 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i64 @HUF_decompress4X2_DCtx_wksp(i32* %35, i8* %36, i64 %37, i8* %38, i64 %39, i8* %40, i64 %41)
  br label %52

43:                                               ; preds = %28
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @HUF_decompress4X1_DCtx_wksp(i32* %44, i8* %45, i64 %46, i8* %47, i64 %48, i8* %49, i64 %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = phi i64 [ %42, %34 ], [ %51, %43 ]
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %52, %25, %19
  %55 = load i64, i64* %8, align 8
  ret i64 %55
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @HUF_selectDecoder(i64, i64) #1

declare dso_local i64 @HUF_decompress4X2_DCtx_wksp(i32*, i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_decompress4X1_DCtx_wksp(i32*, i8*, i64, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
