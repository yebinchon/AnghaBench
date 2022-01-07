; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_select.c_get_scene_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_select.c_get_scene_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, double*, double*, i32, double, %struct.TYPE_10__*, i32 (i32, i32, i32, i32, double, double, double*)* }
%struct.TYPE_10__ = type { i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_11__*, %struct.TYPE_10__*)* @get_scene_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_scene_score(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %145

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %145

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %145

38:                                               ; preds = %30
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %112, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  %48 = load i32 (i32, i32, i32, i32, double, double, double*)*, i32 (i32, i32, i32, i32, double, double, double*)** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load double*, double** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = call i32 %48(i32 %55, i32 %62, i32 %69, i32 %76, double %83, double %90, double* %13)
  %92 = load double, double* %13, align 8
  %93 = load double, double* %8, align 8
  %94 = fadd double %93, %92
  store double %94, double* %8, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load double*, double** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %97, i64 %99
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load double*, double** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fmul double %101, %108
  %110 = load double, double* %11, align 8
  %111 = fadd double %110, %109
  store double %111, double* %11, align 8
  br label %112

112:                                              ; preds = %45
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %39

115:                                              ; preds = %39
  %116 = call i32 (...) @emms_c()
  %117 = load double, double* %8, align 8
  %118 = load double, double* %11, align 8
  %119 = fdiv double %117, %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 8
  %124 = zext i32 %123 to i64
  %125 = shl i64 1, %124
  %126 = uitofp i64 %125 to double
  %127 = fdiv double %119, %126
  store double %127, double* %9, align 8
  %128 = load double, double* %9, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load double, double* %130, align 8
  %132 = fsub double %128, %131
  %133 = call double @llvm.fabs.f64(double %132)
  store double %133, double* %10, align 8
  %134 = load double, double* %9, align 8
  %135 = load double, double* %10, align 8
  %136 = call i32 @FFMIN(double %134, double %135)
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %137, 1.000000e+02
  %139 = fptosi double %138 to i32
  %140 = call double @av_clipf(i32 %139, i32 0, i32 1)
  store double %140, double* %5, align 8
  %141 = load double, double* %9, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  store double %141, double* %143, align 8
  %144 = call i32 @av_frame_free(%struct.TYPE_10__** %7)
  br label %145

145:                                              ; preds = %115, %30, %22, %2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = call %struct.TYPE_10__* @av_frame_clone(%struct.TYPE_10__* %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %149, align 8
  %150 = load double, double* %5, align 8
  ret double %150
}

declare dso_local i32 @emms_c(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local double @av_clipf(i32, i32, i32) #1

declare dso_local i32 @FFMIN(double, double) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_10__**) #1

declare dso_local %struct.TYPE_10__* @av_frame_clone(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
