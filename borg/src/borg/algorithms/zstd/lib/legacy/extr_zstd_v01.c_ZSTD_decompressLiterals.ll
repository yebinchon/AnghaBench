; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressLiterals.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressLiterals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corruption_detected = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressLiterals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressLiterals(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %13, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ule i64 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @corruption_detected, align 4
  %28 = call i64 @ERROR(i32 %27)
  store i64 %28, i64* %6, align 8
  br label %75

29:                                               ; preds = %5
  %30 = load i32*, i32** %14, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = add nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %16, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -3
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 3
  %43 = and i32 %42, 7
  %44 = shl i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %16, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %16, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i64, i64* %16, align 8
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %29
  %57 = load i32, i32* @dstSize_tooSmall, align 4
  %58 = call i64 @ERROR(i32 %57)
  store i64 %58, i64* %6, align 8
  br label %75

59:                                               ; preds = %29
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, 2
  %66 = call i64 @HUF_decompress(i32* %60, i64 %61, i32* %63, i64 %65)
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i64 @FSE_isError(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @GENERIC, align 4
  %72 = call i64 @ERROR(i32 %71)
  store i64 %72, i64* %6, align 8
  br label %75

73:                                               ; preds = %59
  %74 = load i64, i64* %16, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %73, %70, %56, %26
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_decompress(i32*, i64, i32*, i64) #1

declare dso_local i64 @FSE_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
