; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zDec.c_SzDecodeLzma2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zDec.c_SzDecodeLzma2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_15__ = type { i64 (i8*, i64)*, i64 (i8*, i8**, i64*)* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32* }

@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i64, %struct.TYPE_15__*, i32*, i64, i32*)* @SzDecodeLzma2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SzDecodeLzma2(%struct.TYPE_16__* %0, i64 %1, %struct.TYPE_15__* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i64, i64* @SZ_OK, align 8
  store i64 %21, i64* %15, align 8
  %22 = call i32 @Lzma2Dec_Construct(%struct.TYPE_17__* %14)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %29, i64* %7, align 8
  br label %134

30:                                               ; preds = %6
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @Lzma2Dec_AllocateProbs(%struct.TYPE_17__* %14, i32 %36, i32* %37)
  %39 = call i32 @RINOK(i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = call i32 @Lzma2Dec_Init(%struct.TYPE_17__* %14)
  br label %47

47:                                               ; preds = %129, %30
  store i32* null, i32** %16, align 8
  store i64 262144, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %17, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64 (i8*, i8**, i64*)*, i64 (i8*, i8**, i64*)** %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = bitcast %struct.TYPE_15__* %57 to i8*
  %59 = bitcast i32** %16 to i8**
  %60 = call i64 %56(i8* %58, i8** %59, i64* %17)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @SZ_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %130

65:                                               ; preds = %53
  %66 = load i64, i64* %17, align 8
  store i64 %66, i64* %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* @LZMA_FINISH_END, align 4
  %73 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_17__* %14, i64 %70, i32* %71, i64* %18, i32 %72, i64* %20)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* @SZ_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %130

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = load i64, i64* %18, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95, %84
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %17, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %20, align 8
  %112 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %107, %101
  %115 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %115, i64* %15, align 8
  br label %116

116:                                              ; preds = %114, %110
  br label %130

117:                                              ; preds = %95, %92
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64 (i8*, i64)*, i64 (i8*, i64)** %119, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %122 = bitcast %struct.TYPE_15__* %121 to i8*
  %123 = load i64, i64* %18, align 8
  %124 = call i64 %120(i8* %122, i64 %123)
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* @SZ_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %130

129:                                              ; preds = %117
  br label %47

130:                                              ; preds = %128, %116, %83, %64
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @Lzma2Dec_FreeProbs(%struct.TYPE_17__* %14, i32* %131)
  %133 = load i64, i64* %15, align 8
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %130, %28
  %135 = load i64, i64* %7, align 8
  ret i64 %135
}

declare dso_local i32 @Lzma2Dec_Construct(%struct.TYPE_17__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2Dec_AllocateProbs(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @Lzma2Dec_Init(%struct.TYPE_17__*) #1

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_17__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i32 @Lzma2Dec_FreeProbs(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
