; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v06.c_HUFv06_decompress1X2_usingDTable.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v06.c_HUFv06_decompress1X2_usingDTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv06_decompress1X2_usingDTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
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
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @BITv06_initDStream(i32* %17, i8* %32, i64 %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = call i64 @HUFv06_isError(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i64, i64* %18, align 8
  store i64 %39, i64* %6, align 8
  br label %53

40:                                               ; preds = %5
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @HUFv06_decodeStreamX2(i32* %41, i32* %17, i32* %42, i32* %43, i32 %44)
  %46 = call i32 @BITv06_endOfDStream(i32* %17)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @corruption_detected, align 4
  %50 = call i64 @ERROR(i32 %49)
  store i64 %50, i64* %6, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %48, %38
  %54 = load i64, i64* %6, align 8
  ret i64 %54
}

declare dso_local i64 @BITv06_initDStream(i32*, i8*, i64) #1

declare dso_local i64 @HUFv06_isError(i64) #1

declare dso_local i32 @HUFv06_decodeStreamX2(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv06_endOfDStream(i32*) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
