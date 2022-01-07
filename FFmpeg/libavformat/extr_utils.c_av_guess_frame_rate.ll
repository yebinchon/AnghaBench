; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_guess_frame_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_guess_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @av_guess_frame_rate(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = bitcast %struct.TYPE_14__* %4 to i8*
  %14 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_14__* %8 to i8*
  %22 = bitcast %struct.TYPE_14__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_14__* %9 to i8*
  %26 = bitcast %struct.TYPE_14__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = bitcast %struct.TYPE_14__* %9 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call double @av_q2d(i64 %45, i64 %47)
  %49 = fcmp olt double %48, 7.000000e+01
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = bitcast %struct.TYPE_14__* %4 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call double @av_q2d(i64 %53, i64 %55)
  %57 = fcmp ogt double %56, 2.100000e+02
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = bitcast %struct.TYPE_14__* %4 to i8*
  %60 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %61

61:                                               ; preds = %58, %50, %42, %38, %34, %30, %3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %127

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %123, label %82

82:                                               ; preds = %78
  %83 = bitcast %struct.TYPE_14__* %8 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call double @av_q2d(i64 %85, i64 %87)
  %89 = bitcast %struct.TYPE_14__* %4 to { i64, i64 }*
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call double @av_q2d(i64 %91, i64 %93)
  %95 = fmul double %94, 0x3FE6666666666666
  %96 = fcmp olt double %88, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %82
  %98 = bitcast %struct.TYPE_14__* %9 to { i64, i64 }*
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = bitcast %struct.TYPE_14__* %4 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call { i64, i64 } @av_div_q(i64 %100, i64 %102, i64 %105, i64 %107)
  %109 = bitcast %struct.TYPE_14__* %10 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i64 } %108, 0
  store i64 %111, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i64 } %108, 1
  store i64 %113, i64* %112, align 8
  %114 = bitcast %struct.TYPE_14__* %10 to { i64, i64 }*
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call double @av_q2d(i64 %116, i64 %118)
  %120 = fsub double 1.000000e+00, %119
  %121 = call double @llvm.fabs.f64(double %120)
  %122 = fcmp ogt double %121, 1.000000e-01
  br i1 %122, label %123, label %126

123:                                              ; preds = %97, %78
  %124 = bitcast %struct.TYPE_14__* %4 to i8*
  %125 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  br label %126

126:                                              ; preds = %123, %97, %82, %74, %70
  br label %127

127:                                              ; preds = %126, %61
  %128 = bitcast %struct.TYPE_14__* %4 to { i64, i64 }*
  %129 = load { i64, i64 }, { i64, i64 }* %128, align 8
  ret { i64, i64 } %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @av_q2d(i64, i64) #2

declare dso_local { i64, i64 } @av_div_q(i64, i64, i64, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
