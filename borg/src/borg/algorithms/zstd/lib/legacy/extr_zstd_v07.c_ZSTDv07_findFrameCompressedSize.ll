; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ZSTDv07_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv07_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv07_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@bt_end = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv07_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %16 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %17 = add i64 %15, %16
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @srcSize_wrong, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %98

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %25 = call i64 @ZSTDv07_frameHeaderSize(i8* %23, i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @ZSTDv07_isError(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %3, align 8
  br label %98

31:                                               ; preds = %22
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @MEM_readLE32(i8* %32)
  %34 = load i64, i64* @ZSTDv07_MAGICNUMBER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @prefix_unknown, align 4
  %38 = call i64 @ERROR(i32 %37)
  store i64 %38, i64* %3, align 8
  br label %98

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %43 = add i64 %41, %42
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @srcSize_wrong, align 4
  %47 = call i64 @ERROR(i32 %46)
  store i64 %47, i64* %3, align 8
  br label %98

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %48, %83
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @ZSTDv07_getcBlockSize(i32* %56, i64 %57, %struct.TYPE_3__* %9)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @ZSTDv07_isError(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %3, align 8
  br label %98

64:                                               ; preds = %55
  %65 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %6, align 8
  %68 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @bt_end, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %90

76:                                               ; preds = %64
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @srcSize_wrong, align 4
  %82 = call i64 @ERROR(i32 %81)
  store i64 %82, i64* %3, align 8
  br label %98

83:                                               ; preds = %76
  %84 = load i64, i64* %10, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  br label %55

90:                                               ; preds = %75
  %91 = load i32*, i32** %6, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = ptrtoint i32* %91 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %90, %80, %62, %45, %36, %29, %19
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv07_frameHeaderSize(i8*, i64) #1

declare dso_local i64 @ZSTDv07_isError(i64) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTDv07_getcBlockSize(i32*, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
