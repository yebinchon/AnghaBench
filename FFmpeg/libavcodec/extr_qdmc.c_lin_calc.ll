; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_lin_calc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_lin_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, i32, i32, i32)* @lin_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lin_calc(%struct.TYPE_3__* %0, float %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load float, float* %7, align 4
  %19 = fpext float %18 to double
  %20 = fmul double 5.000000e-01, %19
  %21 = fptrunc double %20 to float
  store float %21, float* %16, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %5
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  %34 = and i32 %33, 65532
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 256, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %38, i64 %41
  store float* %42, float** %17, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %103, %30
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %43
  %48 = load float, float* %16, align 4
  %49 = load float*, float** %17, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = fmul float %48, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fadd float %59, %52
  store float %60, float* %58, align 4
  %61 = load float, float* %16, align 4
  %62 = load float*, float** %17, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load float*, float** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %65
  store float %74, float* %72, align 4
  %75 = load float, float* %16, align 4
  %76 = load float*, float** %17, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = fmul float %75, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %82, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fadd float %87, %79
  store float %88, float* %86, align 4
  %89 = load float, float* %16, align 4
  %90 = load float*, float** %17, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  %92 = load float, float* %91, align 4
  %93 = fmul float %89, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %96, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fadd float %101, %93
  store float %102, float* %100, align 4
  br label %103

103:                                              ; preds = %47
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %13, align 4
  %108 = load float*, float** %17, align 8
  %109 = getelementptr inbounds float, float* %108, i64 4
  store float* %109, float** %17, align 8
  br label %43

110:                                              ; preds = %43
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %14, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load float*, float** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  store float* %123, float** %17, align 8
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %145, %110
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load float, float* %16, align 4
  %133 = load float*, float** %17, align 8
  %134 = getelementptr inbounds float, float* %133, i64 0
  %135 = load float, float* %134, align 4
  %136 = fmul float %132, %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load float*, float** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fadd float %143, %136
  store float %144, float* %142, align 4
  br label %145

145:                                              ; preds = %131
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  %150 = load float*, float** %17, align 8
  %151 = getelementptr inbounds float, float* %150, i32 1
  store float* %151, float** %17, align 8
  br label %125

152:                                              ; preds = %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
