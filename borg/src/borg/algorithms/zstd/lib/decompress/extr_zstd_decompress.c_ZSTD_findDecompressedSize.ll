; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_findDecompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_findDecompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_FRAMEHEADERSIZE_PREFIX = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_MASK = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_CONTENTSIZE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_findDecompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %76, %38, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ZSTD_FRAMEHEADERSIZE_PREFIX, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @MEM_readLE32(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @readSkippableFrameSize(i8* %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @ZSTD_isError(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %3, align 8
  br label %92

32:                                               ; preds = %23
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %92

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %11

47:                                               ; preds = %15
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @ZSTD_getFrameContentSize(i8* %48, i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %3, align 8
  br label %92

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %63, i64* %3, align 8
  br label %92

64:                                               ; preds = %56
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @ZSTD_findFrameCompressedSize(i8* %68, i64 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @ZSTD_isError(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %75, i64* %3, align 8
  br label %92

76:                                               ; preds = %64
  %77 = load i8*, i8** %4, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = bitcast i32* %80 to i8*
  store i8* %81, i8** %4, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %11

85:                                               ; preds = %11
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  store i64 %89, i64* %3, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %88, %74, %62, %54, %36, %30
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i64 @readSkippableFrameSize(i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_getFrameContentSize(i8*, i64) #1

declare dso_local i64 @ZSTD_findFrameCompressedSize(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
