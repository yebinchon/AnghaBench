; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac.c_ff_atrac_iqmf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac.c_ff_atrac_iqmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qmf_window = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_atrac_iqmf(float* %0, float* %1, i32 %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = load float*, float** %12, align 8
  %20 = load float*, float** %11, align 8
  %21 = call i32 @memcpy(float* %19, float* %20, i32 184)
  %22 = load float*, float** %12, align 8
  %23 = getelementptr inbounds float, float* %22, i64 46
  store float* %23, float** %16, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %101, %6
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load float*, float** %7, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fadd float %33, %38
  %40 = load float*, float** %16, align 8
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %40, i64 %44
  store float %39, float* %45, align 4
  %46 = load float*, float** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fsub float %50, %55
  %57 = load float*, float** %16, align 8
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %57, i64 %61
  store float %56, float* %62, align 4
  %63 = load float*, float** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %63, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %69, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %68, %74
  %76 = load float*, float** %16, align 8
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %76, i64 %80
  store float %75, float* %81, align 4
  %82 = load float*, float** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %82, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %88, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fsub float %87, %93
  %95 = load float*, float** %16, align 8
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %95, i64 %99
  store float %94, float* %100, align 4
  br label %101

101:                                              ; preds = %28
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %13, align 4
  br label %24

104:                                              ; preds = %24
  %105 = load float*, float** %12, align 8
  store float* %105, float** %15, align 8
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %157, %104
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %160

110:                                              ; preds = %107
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %143, %110
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 48
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  %115 = load float*, float** %15, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float*, float** @qmf_window, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load float, float* %123, align 4
  %125 = fmul float %119, %124
  %126 = load float, float* %17, align 4
  %127 = fadd float %126, %125
  store float %127, float* %17, align 4
  %128 = load float*, float** %15, align 8
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %128, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** @qmf_window, align 8
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %134, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fmul float %133, %139
  %141 = load float, float* %18, align 4
  %142 = fadd float %141, %140
  store float %142, float* %18, align 4
  br label %143

143:                                              ; preds = %114
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %13, align 4
  br label %111

146:                                              ; preds = %111
  %147 = load float, float* %18, align 4
  %148 = load float*, float** %10, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  store float %147, float* %149, align 4
  %150 = load float, float* %17, align 4
  %151 = load float*, float** %10, align 8
  %152 = getelementptr inbounds float, float* %151, i64 1
  store float %150, float* %152, align 4
  %153 = load float*, float** %15, align 8
  %154 = getelementptr inbounds float, float* %153, i64 2
  store float* %154, float** %15, align 8
  %155 = load float*, float** %10, align 8
  %156 = getelementptr inbounds float, float* %155, i64 2
  store float* %156, float** %10, align 8
  br label %157

157:                                              ; preds = %146
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %14, align 4
  br label %107

160:                                              ; preds = %107
  %161 = load float*, float** %11, align 8
  %162 = load float*, float** %12, align 8
  %163 = load i32, i32* %9, align 4
  %164 = mul i32 %163, 2
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %162, i64 %165
  %167 = call i32 @memcpy(float* %161, float* %166, i32 184)
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
