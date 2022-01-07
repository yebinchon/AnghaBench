; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_ltp.c_get_lag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_ltp.c_get_lag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* }

@ltp_coef = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, %struct.TYPE_3__*)* @get_lag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_lag(float* %0, float* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %88, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %20, label %91

20:                                               ; preds = %17
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1024
  %23 = call i8* @FFMAX(i32 0, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %60, %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 2048
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = add nsw i32 %32, 1024
  store i32 %33, i32* %16, align 4
  %34 = load float*, float** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %4, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %38, %43
  %45 = load float, float* %13, align 4
  %46 = fadd float %45, %44
  store float %46, float* %13, align 4
  %47 = load float*, float** %4, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %4, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul float %51, %56
  %58 = load float, float* %14, align 4
  %59 = fadd float %58, %57
  store float %59, float* %14, align 4
  br label %60

60:                                               ; preds = %29
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load float, float* %14, align 4
  %65 = fcmp ogt float %64, 0.000000e+00
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load float, float* %13, align 4
  %68 = load float, float* %14, align 4
  %69 = call float @sqrt(float %68)
  %70 = fdiv float %67, %69
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi float [ %70, %66 ], [ 0.000000e+00, %71 ]
  store float %73, float* %12, align 4
  %74 = load float, float* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sitofp i32 %75 to float
  %77 = fcmp ogt float %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load float, float* %12, align 4
  %80 = fptosi float %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %9, align 4
  %82 = load float, float* %12, align 4
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 2048, %83
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %82, %85
  store float %86, float* %11, align 4
  br label %87

87:                                               ; preds = %78, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %17

91:                                               ; preds = %17
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @av_clip_uintp2(i32 %92, i32 11)
  %94 = call i8* @FFMAX(i32 %93, i32 0)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load float, float* %11, align 4
  %98 = load i32*, i32** @ltp_coef, align 8
  %99 = call i64 @quant_array_idx(float %97, i32* %98, i32 8)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32*, i32** @ltp_coef, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i64 @quant_array_idx(float, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
