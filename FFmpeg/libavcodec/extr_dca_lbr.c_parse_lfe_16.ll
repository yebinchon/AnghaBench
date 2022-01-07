; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_lfe_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_lfe_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float, i32, i32 }

@ff_dca_lfe_step_size_16 = common dso_local global float* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid LFE step size index\0A\00", align 1
@ff_dca_lfe_delta_index_16 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @parse_lfe_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_lfe_16(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load float*, float** @ff_dca_lfe_step_size_16, align 8
  %14 = call i32 @FF_ARRAY_ELEMS(float* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = call i32 @get_bits(i32* %17, i32 16)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 15
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 32767
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 0, %23
  %25 = xor i32 %22, %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = sitofp i32 %27 to float
  %29 = fmul float %28, 0x3F00002000000000
  store float %29, float* %11, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @get_bits(i32* %31, i32 8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(i32 %39, i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %136

42:                                               ; preds = %1
  %43 = load float*, float** @ff_dca_lfe_step_size_16, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  store float %47, float* %10, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %132, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 64
  br i1 %50, label %51, label %135

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = call i32 @get_bits(i32* %53, i32 4)
  store i32 %54, i32* %8, align 4
  %55 = load float, float* %10, align 4
  %56 = fmul float %55, 1.250000e-01
  store float %56, float* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load float, float* %10, align 4
  %62 = load float, float* %12, align 4
  %63 = fadd float %62, %61
  store float %63, float* %12, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load float, float* %10, align 4
  %70 = fmul float %69, 5.000000e-01
  %71 = load float, float* %12, align 4
  %72 = fadd float %71, %70
  store float %72, float* %12, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load float, float* %10, align 4
  %79 = fmul float %78, 2.500000e-01
  %80 = load float, float* %12, align 4
  %81 = fadd float %80, %79
  store float %81, float* %12, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load float, float* %12, align 4
  %88 = load float, float* %11, align 4
  %89 = fsub float %88, %87
  store float %89, float* %11, align 4
  %90 = load float, float* %11, align 4
  %91 = fcmp olt float %90, -3.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store float -3.000000e+00, float* %11, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %102

94:                                               ; preds = %82
  %95 = load float, float* %12, align 4
  %96 = load float, float* %11, align 4
  %97 = fadd float %96, %95
  store float %97, float* %11, align 4
  %98 = load float, float* %11, align 4
  %99 = fcmp ogt float %98, 3.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store float 3.000000e+00, float* %11, align 4
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i64*, i64** @ff_dca_lfe_delta_index_16, align 8
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 7
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @av_clip(i32 %113, i32 0, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load float*, float** @ff_dca_lfe_step_size_16, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  store float %120, float* %10, align 4
  %121 = load float, float* %11, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load float, float* %123, align 8
  %125 = fmul float %121, %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  store float %125, float* %131, align 4
  br label %132

132:                                              ; preds = %102
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %48

135:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %36
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @FF_ARRAY_ELEMS(float*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
