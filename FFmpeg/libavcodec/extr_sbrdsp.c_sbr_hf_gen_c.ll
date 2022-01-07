; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_hf_gen_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_hf_gen_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x float]*, [2 x float]*, float*, float*, float, i32, i32)* @sbr_hf_gen_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_hf_gen_c([2 x float]* %0, [2 x float]* %1, float* %2, float* %3, float %4, i32 %5, i32 %6) #0 {
  %8 = alloca [2 x float]*, align 8
  %9 = alloca [2 x float]*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca i32, align 4
  store [2 x float]* %0, [2 x float]** %8, align 8
  store [2 x float]* %1, [2 x float]** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float %4, float* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load float*, float** %11, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = load float, float* %12, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* %12, align 4
  %23 = fmul float %21, %22
  %24 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  store float %23, float* %24, align 16
  %25 = load float*, float** %11, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = load float, float* %12, align 4
  %29 = fmul float %27, %28
  %30 = load float, float* %12, align 4
  %31 = fmul float %29, %30
  %32 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 1
  store float %31, float* %32, align 4
  %33 = load float*, float** %10, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = load float, float* %12, align 4
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 2
  store float %37, float* %38, align 8
  %39 = load float*, float** %10, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  %41 = load float, float* %40, align 4
  %42 = load float, float* %12, align 4
  %43 = fmul float %41, %42
  %44 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %43, float* %44, align 4
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %161, %7
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %164

50:                                               ; preds = %46
  %51 = load [2 x float]*, [2 x float]** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x float], [2 x float]* %51, i64 %54
  %56 = getelementptr inbounds [2 x float], [2 x float]* %55, i64 0, i64 0
  %57 = load float, float* %56, align 4
  %58 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %59 = load float, float* %58, align 16
  %60 = fmul float %57, %59
  %61 = load [2 x float]*, [2 x float]** %9, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x float], [2 x float]* %61, i64 %64
  %66 = getelementptr inbounds [2 x float], [2 x float]* %65, i64 0, i64 1
  %67 = load float, float* %66, align 4
  %68 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 1
  %69 = load float, float* %68, align 4
  %70 = fmul float %67, %69
  %71 = fsub float %60, %70
  %72 = load [2 x float]*, [2 x float]** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x float], [2 x float]* %72, i64 %75
  %77 = getelementptr inbounds [2 x float], [2 x float]* %76, i64 0, i64 0
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 2
  %80 = load float, float* %79, align 8
  %81 = fmul float %78, %80
  %82 = fadd float %71, %81
  %83 = load [2 x float]*, [2 x float]** %9, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x float], [2 x float]* %83, i64 %86
  %88 = getelementptr inbounds [2 x float], [2 x float]* %87, i64 0, i64 1
  %89 = load float, float* %88, align 4
  %90 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %91 = load float, float* %90, align 4
  %92 = fmul float %89, %91
  %93 = fsub float %82, %92
  %94 = load [2 x float]*, [2 x float]** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x float], [2 x float]* %94, i64 %96
  %98 = getelementptr inbounds [2 x float], [2 x float]* %97, i64 0, i64 0
  %99 = load float, float* %98, align 4
  %100 = fadd float %93, %99
  %101 = load [2 x float]*, [2 x float]** %8, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x float], [2 x float]* %101, i64 %103
  %105 = getelementptr inbounds [2 x float], [2 x float]* %104, i64 0, i64 0
  store float %100, float* %105, align 4
  %106 = load [2 x float]*, [2 x float]** %9, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x float], [2 x float]* %106, i64 %109
  %111 = getelementptr inbounds [2 x float], [2 x float]* %110, i64 0, i64 1
  %112 = load float, float* %111, align 4
  %113 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %114 = load float, float* %113, align 16
  %115 = fmul float %112, %114
  %116 = load [2 x float]*, [2 x float]** %9, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x float], [2 x float]* %116, i64 %119
  %121 = getelementptr inbounds [2 x float], [2 x float]* %120, i64 0, i64 0
  %122 = load float, float* %121, align 4
  %123 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 1
  %124 = load float, float* %123, align 4
  %125 = fmul float %122, %124
  %126 = fadd float %115, %125
  %127 = load [2 x float]*, [2 x float]** %9, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x float], [2 x float]* %127, i64 %130
  %132 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 0, i64 1
  %133 = load float, float* %132, align 4
  %134 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 2
  %135 = load float, float* %134, align 8
  %136 = fmul float %133, %135
  %137 = fadd float %126, %136
  %138 = load [2 x float]*, [2 x float]** %9, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x float], [2 x float]* %138, i64 %141
  %143 = getelementptr inbounds [2 x float], [2 x float]* %142, i64 0, i64 0
  %144 = load float, float* %143, align 4
  %145 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %146 = load float, float* %145, align 4
  %147 = fmul float %144, %146
  %148 = fadd float %137, %147
  %149 = load [2 x float]*, [2 x float]** %9, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x float], [2 x float]* %149, i64 %151
  %153 = getelementptr inbounds [2 x float], [2 x float]* %152, i64 0, i64 1
  %154 = load float, float* %153, align 4
  %155 = fadd float %148, %154
  %156 = load [2 x float]*, [2 x float]** %8, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x float], [2 x float]* %156, i64 %158
  %160 = getelementptr inbounds [2 x float], [2 x float]* %159, i64 0, i64 1
  store float %155, float* %160, align 4
  br label %161

161:                                              ; preds = %50
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %46

164:                                              ; preds = %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
