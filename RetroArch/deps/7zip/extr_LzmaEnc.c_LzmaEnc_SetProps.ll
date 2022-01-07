; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_SetProps.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_SetProps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i32, i32 }

@LZMA_LC_MAX = common dso_local global i64 0, align 8
@LZMA_LP_MAX = common dso_local global i64 0, align 8
@LZMA_PB_MAX = common dso_local global i64 0, align 8
@kDicLogSizeMaxCompress = common dso_local global i32 0, align 4
@LzmaEnckMaxHistorySize = common dso_local global i32 0, align 4
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@LZMA_MATCH_LEN_MAX = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_SetProps(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = bitcast %struct.TYPE_7__* %7 to i8*
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 64, i1 false)
  %15 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_7__* %7)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LZMA_LC_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LZMA_LP_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LZMA_PB_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @kDicLogSizeMaxCompress, align 4
  %34 = shl i32 1, %33
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LzmaEnckMaxHistorySize, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %30, %25, %20, %2
  %42 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %42, i32* %3, align 4
  br label %128

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %50, 5
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 5, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = trunc i32 %85 to i8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8 %86, i8* %89, align 4
  store i32 4, i32* %9, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %59
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 2, i32* %9, align 4
  br label %106

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %98
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %59
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SZ_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %107, %41
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LzmaEncProps_Normalize(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
