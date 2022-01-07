; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@ZSTD_SKIPPABLEHEADERSIZE = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_MASK = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ZSTD_SKIPPABLEHEADERSIZE, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @MEM_readLE32(i8* %17)
  %19 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @readSkippableFrameSize(i8* %24, i64 %25)
  store i64 %26, i64* %3, align 8
  br label %109

27:                                               ; preds = %16, %2
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %7, align 8
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ZSTD_getFrameHeader(%struct.TYPE_6__* %9, i8* %32, i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @ZSTD_isError(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %3, align 8
  br label %109

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @srcSize_wrong, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %3, align 8
  br label %109

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %46, %88
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @ZSTD_getcBlockSize(i32* %56, i64 %57, %struct.TYPE_5__* %11)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @ZSTD_isError(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %3, align 8
  br label %109

64:                                               ; preds = %55
  %65 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @srcSize_wrong, align 4
  %72 = call i64 @ERROR(i32 %71)
  store i64 %72, i64* %3, align 8
  br label %109

73:                                               ; preds = %64
  %74 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %74, %75
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %6, align 8
  %79 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %89

88:                                               ; preds = %73
  br label %55

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = icmp ult i64 %94, 4
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @srcSize_wrong, align 4
  %98 = call i64 @ERROR(i32 %97)
  store i64 %98, i64* %3, align 8
  br label %109

99:                                               ; preds = %93
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %6, align 8
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32*, i32** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %102, %96, %70, %62, %43, %38, %23
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i64 @readSkippableFrameSize(i8*, i64) #1

declare dso_local i64 @ZSTD_getFrameHeader(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
