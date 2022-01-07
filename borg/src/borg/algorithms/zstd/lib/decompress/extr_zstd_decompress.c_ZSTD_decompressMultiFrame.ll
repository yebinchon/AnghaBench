; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_decompressMultiFrame\00", align 1
@ZSTD_FRAMEHEADERSIZE_PREFIX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"reading magic number %08X (expecting %08X)\00", align 1
@ZSTD_MAGICNUMBER = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_MASK = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_error_prefix_unknown = common dso_local global i64 0, align 8
@memory_allocation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64, i8*, i64, i8*, i64, i32*)* @ZSTD_decompressMultiFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressMultiFrame(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %24 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %15, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32*, i32** %17, align 8
  %29 = icmp eq i32* %28, null
  br label %30

30:                                               ; preds = %27, %8
  %31 = phi i1 [ true, %8 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %17, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32*, i32** %17, align 8
  %38 = call i8* @ZSTD_DDict_dictContent(i32* %37)
  store i8* %38, i8** %15, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i64 @ZSTD_DDict_dictSize(i32* %39)
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %120, %73, %41
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @ZSTD_FRAMEHEADERSIZE_PREFIX, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %134

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @MEM_readLE32(i8* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @ZSTD_MAGICNUMBER, align 4
  %51 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %46
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i64 @readSkippableFrameSize(i8* %58, i64 %59)
  store i64 %60, i64* %21, align 8
  %61 = load i64, i64* %21, align 8
  %62 = call i64 @ZSTD_isError(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %21, align 8
  store i64 %65, i64* %9, align 8
  br label %149

66:                                               ; preds = %57
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %21, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @srcSize_wrong, align 4
  %72 = call i64 @ERROR(i32 %71)
  store i64 %72, i64* %9, align 8
  br label %149

73:                                               ; preds = %66
  %74 = load i8*, i8** %13, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i64, i64* %21, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = bitcast i32* %77 to i8*
  store i8* %78, i8** %13, align 8
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %14, align 8
  br label %42

82:                                               ; preds = %46
  %83 = load i32*, i32** %17, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__* %86, i32* %87)
  %89 = call i32 @CHECK_F(i32 %88)
  br label %96

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__* %91, i8* %92, i64 %93)
  %95 = call i32 @CHECK_F(i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @ZSTD_checkContinuity(%struct.TYPE_7__* %97, i8* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @ZSTD_decompressFrame(%struct.TYPE_7__* %100, i8* %101, i64 %102, i8** %13, i64* %14)
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %22, align 8
  %105 = call i64 @ZSTD_getErrorCode(i64 %104)
  %106 = load i64, i64* @ZSTD_error_prefix_unknown, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load i32, i32* %19, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @srcSize_wrong, align 4
  %113 = call i64 @ERROR(i32 %112)
  store i64 %113, i64* %9, align 8
  br label %149

114:                                              ; preds = %108, %96
  %115 = load i64, i64* %22, align 8
  %116 = call i64 @ZSTD_isError(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i64, i64* %22, align 8
  store i64 %119, i64* %9, align 8
  br label %149

120:                                              ; preds = %114
  %121 = load i64, i64* %22, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp ule i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i8*, i8** %11, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load i64, i64* %22, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = bitcast i32* %129 to i8*
  store i8* %130, i8** %11, align 8
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %12, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %12, align 8
  store i32 1, i32* %19, align 4
  br label %42

134:                                              ; preds = %42
  %135 = load i64, i64* %14, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @srcSize_wrong, align 4
  %139 = call i64 @ERROR(i32 %138)
  store i64 %139, i64* %9, align 8
  br label %149

140:                                              ; preds = %134
  %141 = load i8*, i8** %11, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i8*, i8** %18, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = ptrtoint i32* %142 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %140, %137, %118, %111, %70, %64
  %150 = load i64, i64* %9, align 8
  ret i64 %150
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ZSTD_DDict_dictContent(i32*) #1

declare dso_local i64 @ZSTD_DDict_dictSize(i32*) #1

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i64 @readSkippableFrameSize(i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @ZSTD_checkContinuity(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @ZSTD_decompressFrame(%struct.TYPE_7__*, i8*, i64, i8**, i64*) #1

declare dso_local i64 @ZSTD_getErrorCode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
