; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_checkTotalCompressedSize.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_checkTotalCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @COVER_checkTotalCompressedSize(double %0, i32 %1, i64* %2, i32* %3, i64* %4, i64 %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = bitcast %struct.TYPE_5__* %10 to { double, i32 }*
  %27 = getelementptr inbounds { double, i32 }, { double, i32 }* %26, i32 0, i32 0
  store double %0, double* %27, align 8
  %28 = getelementptr inbounds { double, i32 }, { double, i32 }* %26, i32 0, i32 1
  store i32 %1, i32* %28, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  store i64 %8, i64* %17, align 8
  %29 = load i32, i32* @GENERIC, align 4
  %30 = call i64 @ERROR(i32 %29)
  store i64 %30, i64* %18, align 8
  store i64 0, i64* %24, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = fcmp olt double %32, 1.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = load i64, i64* %14, align 8
  br label %37

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i64 [ %35, %34 ], [ 0, %36 ]
  store i64 %38, i64* %23, align 8
  br label %39

39:                                               ; preds = %50, %37
  %40 = load i64, i64* %23, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %23, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %24, align 8
  %49 = call i64 @MAX(i64 %47, i64 %48)
  store i64 %49, i64* %24, align 8
  br label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %23, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %23, align 8
  br label %39

53:                                               ; preds = %39
  %54 = load i64, i64* %24, align 8
  %55 = call i64 @ZSTD_compressBound(i64 %54)
  store i64 %55, i64* %22, align 8
  %56 = load i64, i64* %22, align 8
  %57 = call i8* @malloc(i64 %56)
  store i8* %57, i8** %21, align 8
  %58 = call i32* (...) @ZSTD_createCCtx()
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @ZSTD_createCDict(i32* %59, i64 %60, i32 %63)
  store i32* %64, i32** %20, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32*, i32** %19, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %20, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %67, %53
  br label %118

74:                                               ; preds = %70
  %75 = load i64, i64* %17, align 8
  store i64 %75, i64* %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = fcmp olt double %77, 1.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64, i64* %14, align 8
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i64 [ %80, %79 ], [ 0, %81 ]
  store i64 %83, i64* %23, align 8
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i64, i64* %23, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i32*, i32** %19, align 8
  %90 = load i8*, i8** %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %23, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %23, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = call i64 @ZSTD_compress_usingCDict(i32* %89, i8* %90, i64 %91, i32* %97, i64 %101, i32* %102)
  store i64 %103, i64* %25, align 8
  %104 = load i64, i64* %25, align 8
  %105 = call i64 @ZSTD_isError(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %88
  %108 = load i32, i32* @GENERIC, align 4
  %109 = call i64 @ERROR(i32 %108)
  store i64 %109, i64* %18, align 8
  br label %118

110:                                              ; preds = %88
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %18, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %18, align 8
  br label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %23, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %23, align 8
  br label %84

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %107, %73
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @ZSTD_freeCCtx(i32* %119)
  %121 = load i32*, i32** %20, align 8
  %122 = call i32 @ZSTD_freeCDict(i32* %121)
  %123 = load i8*, i8** %21, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i8*, i8** %21, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i64, i64* %18, align 8
  ret i64 %129
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createCDict(i32*, i64, i32) #1

declare dso_local i64 @ZSTD_compress_usingCDict(i32*, i8*, i64, i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @ZSTD_freeCDict(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
