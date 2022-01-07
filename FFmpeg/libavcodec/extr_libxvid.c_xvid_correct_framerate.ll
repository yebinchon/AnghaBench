; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_correct_framerate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_correct_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Xvid: framerate re-estimated: %.2f, %.3f%% correction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @xvid_correct_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvid_correct_framerate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @av_gcd(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %31, 65000
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 65000
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %123

45:                                               ; preds = %33, %30
  %46 = load i32, i32* %3, align 4
  %47 = sitofp i32 %46 to float
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %47, %49
  store float %50, float* %9, align 4
  %51 = load float, float* %9, align 4
  %52 = fpext float %51 to double
  %53 = fmul double %52, 1.000000e+03
  %54 = fptrunc double %53 to float
  %55 = call double @roundf(float %54)
  %56 = fdiv double %55, 1.000000e+03
  %57 = fptrunc double %56 to float
  store float %57, float* %8, align 4
  %58 = load float, float* %8, align 4
  %59 = fptosi float %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load float, float* %8, align 4
  %61 = load float, float* %8, align 4
  %62 = fptosi float %61 to i32
  %63 = sitofp i32 %62 to float
  %64 = fcmp ogt float %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %45
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = mul nsw i32 %67, 1000
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %8, align 4
  %72 = fdiv float %70, %71
  %73 = call double @roundf(float %72)
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @av_gcd(i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sdiv i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sdiv i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = load i32, i32* @AV_LOG_DEBUG, align 4
  %104 = load float, float* %8, align 4
  %105 = load float, float* %8, align 4
  %106 = load float, float* %9, align 4
  %107 = fsub float %105, %106
  %108 = load float, float* %9, align 4
  %109 = fdiv float %107, %108
  %110 = fpext float %109 to double
  %111 = fmul double %110, 1.000000e+02
  %112 = fptrunc double %111 to float
  %113 = call i32 @av_log(%struct.TYPE_6__* %102, i32 %103, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), float %104, float %112)
  br label %123

114:                                              ; preds = %89
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %36, %114, %93
  ret void
}

declare dso_local i32 @av_gcd(i32, i32) #1

declare dso_local double @roundf(float) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
