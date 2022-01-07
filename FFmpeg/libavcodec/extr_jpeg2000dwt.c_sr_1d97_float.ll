; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sr_1d97_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sr_1d97_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_LFTG_K = common dso_local global i32 0, align 4
@F_LFTG_X = common dso_local global float 0.000000e+00, align 4
@F_LFTG_DELTA = common dso_local global float 0.000000e+00, align 4
@F_LFTG_GAMMA = common dso_local global float 0.000000e+00, align 4
@F_LFTG_BETA = common dso_local global float 0.000000e+00, align 4
@F_LFTG_ALPHA = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32)* @sr_1d97_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sr_1d97_float(float* %0, i32 %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  %11 = icmp sle i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @F_LFTG_K, align 4
  %17 = sdiv i32 %16, 2
  %18 = sitofp i32 %17 to float
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = fmul float %21, %18
  store float %22, float* %20, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load float, float* @F_LFTG_X, align 4
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %27, %24
  store float %28, float* %26, align 4
  br label %29

29:                                               ; preds = %23, %15
  br label %183

30:                                               ; preds = %3
  %31 = load float*, float** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @extend97_float(float* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %69, %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 1
  %42 = add nsw i32 %41, 2
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load float, float* @F_LFTG_DELTA, align 4
  %46 = load float*, float** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 2, %47
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %46, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fadd float %52, %59
  %61 = fmul float %45, %60
  %62 = load float*, float** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fsub float %67, %61
  store float %68, float* %66, align 4
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %38

72:                                               ; preds = %38
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 1
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %107, %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 1
  %80 = add nsw i32 %79, 1
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load float, float* @F_LFTG_GAMMA, align 4
  %84 = load float*, float** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %84, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %90, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fadd float %89, %96
  %98 = fmul float %83, %97
  %99 = load float*, float** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 2, %100
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %99, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fsub float %105, %98
  store float %106, float* %104, align 4
  br label %107

107:                                              ; preds = %82
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %76

110:                                              ; preds = %76
  %111 = load i32, i32* %5, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %144, %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = ashr i32 %115, 1
  %117 = add nsw i32 %116, 1
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load float, float* @F_LFTG_BETA, align 4
  %121 = load float*, float** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 2, %122
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %121, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = mul nsw i32 2, %129
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fadd float %127, %134
  %136 = fmul float %120, %135
  %137 = load float*, float** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 2, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %137, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fadd float %142, %136
  store float %143, float* %141, align 4
  br label %144

144:                                              ; preds = %119
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %113

147:                                              ; preds = %113
  %148 = load i32, i32* %5, align 4
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %180, %147
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = ashr i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %150
  %156 = load float, float* @F_LFTG_ALPHA, align 4
  %157 = load float*, float** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %157, i64 %160
  %162 = load float, float* %161, align 4
  %163 = load float*, float** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %163, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fadd float %162, %169
  %171 = fmul float %156, %170
  %172 = load float*, float** %4, align 8
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 2, %173
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %172, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fadd float %178, %171
  store float %179, float* %177, align 4
  br label %180

180:                                              ; preds = %155
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %150

183:                                              ; preds = %29, %150
  ret void
}

declare dso_local i32 @extend97_float(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
