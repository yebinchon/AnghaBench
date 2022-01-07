; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_create_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_eq.c_create_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eq_data = type { i32, i32, i32 }
%struct.eq_gain = type { i32 }

@gains_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.8f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eq_data*, i32, %struct.eq_gain*, i32, double, i8*)* @create_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_filter(%struct.eq_data* %0, i32 %1, %struct.eq_gain* %2, i32 %3, double %4, i8* %5) #0 {
  %7 = alloca %struct.eq_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.eq_gain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca double, align 8
  %20 = alloca i32*, align 8
  store %struct.eq_data* %0, %struct.eq_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.eq_gain* %2, %struct.eq_gain** %9, align 8
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store i8* %5, i8** %12, align 8
  %21 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %22 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %14, align 4
  %25 = load double, double* %11, align 8
  %26 = call double @kaiser_window_function(double 0.000000e+00, double %25)
  %27 = fdiv double 1.000000e+00, %26
  store double %27, double* %15, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @fft_new(i32 %28)
  store i32* %29, i32** %16, align 8
  %30 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %31 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %33, 1
  %35 = call i64 @calloc(i32 %34, i32 4)
  %36 = inttoptr i64 %35 to float*
  store float* %36, float** %17, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %6
  %40 = load float*, float** %17, align 8
  %41 = icmp ne float* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %6
  br label %168

43:                                               ; preds = %39
  %44 = load %struct.eq_gain*, %struct.eq_gain** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @gains_cmp, align 4
  %47 = call i32 @qsort(%struct.eq_gain* %44, i32 %45, i32 4, i32 %46)
  %48 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %49 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.eq_gain*, %struct.eq_gain** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @generate_response(i32 %50, %struct.eq_gain* %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %16, align 8
  %56 = load float*, float** %17, align 8
  %57 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %58 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fft_process_inverse(i32* %55, float* %56, i32 %59, i32 1)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %89, %43
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load float*, float** %17, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  %72 = load float, float* %71, align 4
  store float %72, float* %18, align 4
  %73 = load float*, float** %17, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %17, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %78, i64 %82
  store float %77, float* %83, align 4
  %84 = load float, float* %18, align 4
  %85 = load float*, float** %17, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %61

92:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %123, %92
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %96 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = sitofp i32 %100 to double
  %102 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %103 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to double
  %106 = fdiv double %101, %105
  store double %106, double* %19, align 8
  %107 = load double, double* %19, align 8
  %108 = fsub double %107, 5.000000e-01
  %109 = fmul double 2.000000e+00, %108
  store double %109, double* %19, align 8
  %110 = load double, double* %15, align 8
  %111 = load double, double* %19, align 8
  %112 = load double, double* %11, align 8
  %113 = call double @kaiser_window_function(double %111, double %112)
  %114 = fmul double %110, %113
  %115 = load float*, float** %17, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fpext float %119 to double
  %121 = fmul double %120, %114
  %122 = fptrunc double %121 to float
  store float %122, float* %118, align 4
  br label %123

123:                                              ; preds = %99
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %93

126:                                              ; preds = %93
  %127 = load i8*, i8** %12, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %158

129:                                              ; preds = %126
  %130 = load i8*, i8** %12, align 8
  %131 = call i32* @fopen(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %131, i32** %20, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %157

134:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %151, %134
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %138 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load i32*, i32** %20, align 8
  %144 = load float*, float** %17, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %144, i64 %147
  %149 = load float, float* %148, align 4
  %150 = call i32 @fprintf(i32* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), float %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %135

154:                                              ; preds = %135
  %155 = load i32*, i32** %20, align 8
  %156 = call i32 @fclose(i32* %155)
  br label %157

157:                                              ; preds = %154, %129
  br label %158

158:                                              ; preds = %157, %126
  %159 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %160 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.eq_data*, %struct.eq_data** %7, align 8
  %163 = getelementptr inbounds %struct.eq_data, %struct.eq_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load float*, float** %17, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = call i32 @fft_process_forward(i32 %161, i32 %164, float* %166, i32 1)
  br label %168

168:                                              ; preds = %158, %42
  %169 = load i32*, i32** %16, align 8
  %170 = call i32 @fft_free(i32* %169)
  %171 = load float*, float** %17, align 8
  %172 = call i32 @free(float* %171)
  ret void
}

declare dso_local double @kaiser_window_function(double, double) #1

declare dso_local i32* @fft_new(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @qsort(%struct.eq_gain*, i32, i32, i32) #1

declare dso_local i32 @generate_response(i32, %struct.eq_gain*, i32, i32) #1

declare dso_local i32 @fft_process_inverse(i32*, float*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, float) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fft_process_forward(i32, i32, float*, i32) #1

declare dso_local i32 @fft_free(i32*) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
