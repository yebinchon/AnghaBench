; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_I_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_I_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, float*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float*)* @dct_calc_I_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dct_calc_I_c(%struct.TYPE_6__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store float* %1, float** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  store i32 %15, i32* %5, align 4
  %16 = load float*, float** %4, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub float %18, %23
  %25 = fmul float -5.000000e-01, %24
  store float %25, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %87, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %26
  %32 = load float*, float** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  store float %36, float* %8, align 4
  %37 = load float*, float** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %37, i64 %41
  %43 = load float, float* %42, align 4
  store float %43, float* %9, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 2, %46
  %48 = call float @SIN(%struct.TYPE_6__* %44, i32 %45, i32 %47)
  store float %48, float* %10, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 2, %51
  %53 = call float @COS(%struct.TYPE_6__* %49, i32 %50, i32 %52)
  store float %53, float* %11, align 4
  %54 = load float, float* %8, align 4
  %55 = load float, float* %9, align 4
  %56 = fsub float %54, %55
  %57 = load float, float* %11, align 4
  %58 = fmul float %57, %56
  store float %58, float* %11, align 4
  %59 = load float, float* %8, align 4
  %60 = load float, float* %9, align 4
  %61 = fsub float %59, %60
  %62 = load float, float* %10, align 4
  %63 = fmul float %62, %61
  store float %63, float* %10, align 4
  %64 = load float, float* %11, align 4
  %65 = load float, float* %7, align 4
  %66 = fadd float %65, %64
  store float %66, float* %7, align 4
  %67 = load float, float* %8, align 4
  %68 = load float, float* %9, align 4
  %69 = fadd float %67, %68
  %70 = fmul float %69, 5.000000e-01
  store float %70, float* %8, align 4
  %71 = load float, float* %8, align 4
  %72 = load float, float* %10, align 4
  %73 = fsub float %71, %72
  %74 = load float*, float** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  store float %73, float* %77, align 4
  %78 = load float, float* %8, align 4
  %79 = load float, float* %10, align 4
  %80 = fadd float %78, %79
  %81 = load float*, float** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  store float %80, float* %86, align 4
  br label %87

87:                                               ; preds = %31
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %26

90:                                               ; preds = %26
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_7__*, float*)*, i32 (%struct.TYPE_7__*, float*)** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load float*, float** %4, align 8
  %98 = call i32 %94(%struct.TYPE_7__* %96, float* %97)
  %99 = load float*, float** %4, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float %101, float* %105, align 4
  %106 = load float, float* %7, align 4
  %107 = load float*, float** %4, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  store float %106, float* %108, align 4
  store i32 3, i32* %6, align 4
  br label %109

109:                                              ; preds = %130, %90
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load float*, float** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %114, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load float, float* %123, align 4
  %125 = fsub float %119, %124
  %126 = load float*, float** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  store float %125, float* %129, align 4
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %6, align 4
  br label %109

133:                                              ; preds = %109
  ret void
}

declare dso_local float @SIN(%struct.TYPE_6__*, i32, i32) #1

declare dso_local float @COS(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
