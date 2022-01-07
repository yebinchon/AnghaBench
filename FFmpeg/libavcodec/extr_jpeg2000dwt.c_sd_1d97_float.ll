; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sd_1d97_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_sd_1d97_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_LFTG_X = common dso_local global i32 0, align 4
@F_LFTG_K = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32)* @sd_1d97_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_1d97_float(float* %0, i32 %1, i32 %2) #0 {
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
  %16 = load i32, i32* @F_LFTG_X, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sitofp i32 %17 to float
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = fmul float %21, %18
  store float %22, float* %20, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load float, float* @F_LFTG_K, align 4
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %27, %24
  store float %28, float* %26, align 4
  br label %29

29:                                               ; preds = %23, %15
  br label %195

30:                                               ; preds = %3
  %31 = load float*, float** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @extend97_float(float* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 1
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %75, %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 1
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load float*, float** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %49, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %55, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fadd float %54, %61
  %63 = fpext float %62 to double
  %64 = fmul double 0x3FF960CE0B912DBA, %63
  %65 = load float*, float** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %65, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fpext float %71 to double
  %73 = fsub double %72, %64
  %74 = fptrunc double %73 to float
  store float %74, float* %70, align 4
  br label %75

75:                                               ; preds = %48
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %115, %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 1
  %86 = add nsw i32 %85, 1
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %82
  %89 = load float*, float** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 2, %90
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %89, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %96, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fadd float %95, %102
  %104 = fpext float %103 to double
  %105 = fmul double 5.298000e-02, %104
  %106 = load float*, float** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 2, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %106, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fpext float %111 to double
  %113 = fsub double %112, %105
  %114 = fptrunc double %113 to float
  store float %114, float* %110, align 4
  br label %115

115:                                              ; preds = %88
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %82

118:                                              ; preds = %82
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 1
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %154, %118
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = ashr i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %122
  %128 = load float*, float** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = mul nsw i32 2, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %128, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 2, %135
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %134, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fadd float %133, %140
  %142 = fpext float %141 to double
  %143 = fmul double 8.829110e-01, %142
  %144 = load float*, float** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 2, %145
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %144, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fpext float %150 to double
  %152 = fadd double %151, %143
  %153 = fptrunc double %152 to float
  store float %153, float* %149, align 4
  br label %154

154:                                              ; preds = %127
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %122

157:                                              ; preds = %122
  %158 = load i32, i32* %5, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %192, %157
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %6, align 4
  %163 = ashr i32 %162, 1
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %160
  %166 = load float*, float** %4, align 8
  %167 = load i32, i32* %7, align 4
  %168 = mul nsw i32 2, %167
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %166, i64 %170
  %172 = load float, float* %171, align 4
  %173 = load float*, float** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = mul nsw i32 2, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %173, i64 %177
  %179 = load float, float* %178, align 4
  %180 = fadd float %172, %179
  %181 = fpext float %180 to double
  %182 = fmul double 4.435060e-01, %181
  %183 = load float*, float** %4, align 8
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 2, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fpext float %188 to double
  %190 = fadd double %189, %182
  %191 = fptrunc double %190 to float
  store float %191, float* %187, align 4
  br label %192

192:                                              ; preds = %165
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %160

195:                                              ; preds = %29, %160
  ret void
}

declare dso_local i32 @extend97_float(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
