; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_III_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_III_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, float*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float*)* @dct_calc_III_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dct_calc_III_c(%struct.TYPE_6__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store float* %1, float** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  store i32 %19, i32* %5, align 4
  %20 = load float*, float** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %20, i64 %23
  %25 = load float, float* %24, align 4
  store float %25, float* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float 1.000000e+00, %27
  store float %28, float* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %84, %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %87

34:                                               ; preds = %31
  %35 = load float*, float** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  store float %39, float* %9, align 4
  %40 = load float*, float** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %40, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %46, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fsub float %45, %51
  store float %52, float* %10, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call float @COS(%struct.TYPE_6__* %53, i32 %54, i32 %55)
  store float %56, float* %11, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call float @SIN(%struct.TYPE_6__* %57, i32 %58, i32 %59)
  store float %60, float* %12, align 4
  %61 = load float, float* %11, align 4
  %62 = load float, float* %9, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %12, align 4
  %65 = load float, float* %10, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %63, %66
  %68 = load float*, float** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  %72 = load float, float* %12, align 4
  %73 = load float, float* %9, align 4
  %74 = fmul float %72, %73
  %75 = load float, float* %11, align 4
  %76 = load float, float* %10, align 4
  %77 = fmul float %75, %76
  %78 = fsub float %74, %77
  %79 = load float*, float** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %79, i64 %82
  store float %78, float* %83, align 4
  br label %84

84:                                               ; preds = %34
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 2
  store i32 %86, i32* %6, align 4
  br label %31

87:                                               ; preds = %31
  %88 = load float, float* %7, align 4
  %89 = fmul float 2.000000e+00, %88
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  store float %89, float* %91, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_7__*, float*)*, i32 (%struct.TYPE_7__*, float*)** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load float*, float** %4, align 8
  %99 = call i32 %95(%struct.TYPE_7__* %97, float* %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %154, %87
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sdiv i32 %102, 2
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %100
  %106 = load float*, float** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float, float* %8, align 4
  %112 = fmul float %110, %111
  store float %112, float* %13, align 4
  %113 = load float*, float** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %113, i64 %118
  %120 = load float, float* %119, align 4
  %121 = load float, float* %8, align 4
  %122 = fmul float %120, %121
  store float %122, float* %14, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load float*, float** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float, float* %13, align 4
  %131 = load float, float* %14, align 4
  %132 = fsub float %130, %131
  %133 = fmul float %129, %132
  store float %133, float* %15, align 4
  %134 = load float, float* %14, align 4
  %135 = load float, float* %13, align 4
  %136 = fadd float %135, %134
  store float %136, float* %13, align 4
  %137 = load float, float* %13, align 4
  %138 = load float, float* %15, align 4
  %139 = fadd float %137, %138
  %140 = load float*, float** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  store float %139, float* %143, align 4
  %144 = load float, float* %13, align 4
  %145 = load float, float* %15, align 4
  %146 = fsub float %144, %145
  %147 = load float*, float** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %147, i64 %152
  store float %146, float* %153, align 4
  br label %154

154:                                              ; preds = %105
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %100

157:                                              ; preds = %100
  ret void
}

declare dso_local float @COS(%struct.TYPE_6__*, i32, i32) #1

declare dso_local float @SIN(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
