; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v04.c_HUF_decompress4X2.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v04.c_HUF_decompress4X2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTable = common dso_local global i32 0, align 4
@HUF_MAX_TABLELOG = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @HUF_decompress4X2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress4X2(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @DTable, align 4
  %13 = load i32, i32* @HUF_MAX_TABLELOG, align 4
  %14 = call i32 @HUF_CREATE_STATIC_DTABLEX2(i32 %12, i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* @DTable, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @HUF_readDTableX2(i32 %17, i8* %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @HUF_isError(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %46

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @srcSize_wrong, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %5, align 8
  br label %46

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 %34
  store i32* %36, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @DTable, align 4
  %45 = call i64 @HUF_decompress4X2_usingDTable(i8* %40, i64 %41, i32* %42, i64 %43, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %33, %30, %24
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

declare dso_local i32 @HUF_CREATE_STATIC_DTABLEX2(i32, i32) #1

declare dso_local i64 @HUF_readDTableX2(i32, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_decompress4X2_usingDTable(i8*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
