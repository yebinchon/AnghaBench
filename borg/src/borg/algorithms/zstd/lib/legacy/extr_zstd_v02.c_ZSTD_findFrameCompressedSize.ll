; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_frameHeaderSize = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_magicNumber = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ZSTD_findFrameCompressedSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %16 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %17 = add i64 %15, %16
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @srcSize_wrong, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %79

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @MEM_readLE32(i8* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ZSTD_magicNumber, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @prefix_unknown, align 4
  %30 = call i64 @ERROR(i32 %29)
  store i64 %30, i64* %3, align 8
  br label %79

31:                                               ; preds = %22
  %32 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32* %34, i32** %6, align 8
  %35 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %31, %64
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @ZSTD_getcBlockSize(i32* %39, i64 %40, i32* %9)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @ZSTD_isError(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %3, align 8
  br label %79

47:                                               ; preds = %38
  %48 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %6, align 8
  %51 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @srcSize_wrong, align 4
  %59 = call i64 @ERROR(i32 %58)
  store i64 %59, i64* %3, align 8
  br label %79

60:                                               ; preds = %47
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %71

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %7, align 8
  br label %38

71:                                               ; preds = %63
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = ptrtoint i32* %72 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %71, %57, %45, %28, %19
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
