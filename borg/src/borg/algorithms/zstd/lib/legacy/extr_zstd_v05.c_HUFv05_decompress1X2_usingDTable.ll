; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v05.c_HUFv05_decompress1X2_usingDTable.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v05.c_HUFv05_decompress1X2_usingDTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv05_decompress1X2_usingDTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %16, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @dstSize_tooSmall, align 4
  %37 = call i64 @ERROR(i32 %36)
  store i64 %37, i64* %6, align 8
  br label %60

38:                                               ; preds = %5
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @BITv05_initDStream(i32* %17, i8* %39, i64 %40)
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = call i64 @HUFv05_isError(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* %18, align 8
  store i64 %46, i64* %6, align 8
  br label %60

47:                                               ; preds = %38
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @HUFv05_decodeStreamX2(i32* %48, i32* %17, i32* %49, i32* %50, i32 %51)
  %53 = call i32 @BITv05_endOfDStream(i32* %17)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @corruption_detected, align 4
  %57 = call i64 @ERROR(i32 %56)
  store i64 %57, i64* %6, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %55, %45, %35
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @BITv05_initDStream(i32*, i8*, i64) #1

declare dso_local i64 @HUFv05_isError(i64) #1

declare dso_local i32 @HUFv05_decodeStreamX2(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv05_endOfDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
