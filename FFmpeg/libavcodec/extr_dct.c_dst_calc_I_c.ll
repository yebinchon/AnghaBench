; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dst_calc_I_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dst_calc_I_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @dst_calc_I_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_calc_I_c(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %68, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to float
  store float %27, float* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to float
  store float %35, float* %8, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 2, %38
  %40 = call float @SIN(%struct.TYPE_5__* %36, i32 %37, i32 %39)
  store float %40, float* %9, align 4
  %41 = load float, float* %7, align 4
  %42 = load float, float* %8, align 4
  %43 = fadd float %41, %42
  %44 = load float, float* %9, align 4
  %45 = fmul float %44, %43
  store float %45, float* %9, align 4
  %46 = load float, float* %7, align 4
  %47 = load float, float* %8, align 4
  %48 = fsub float %46, %47
  %49 = fmul float %48, 5.000000e-01
  store float %49, float* %7, align 4
  %50 = load float, float* %9, align 4
  %51 = load float, float* %7, align 4
  %52 = fadd float %50, %51
  %53 = fptosi float %52 to i32
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load float, float* %9, align 4
  %59 = load float, float* %7, align 4
  %60 = fsub float %58, %59
  %61 = fptosi float %60 to i32
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %21
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 %82(%struct.TYPE_6__* %84, i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to float
  %91 = fmul float %90, 5.000000e-01
  %92 = fptosi float %91 to i32
  store i32 %92, i32* %88, align 4
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %123, %71
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 2
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %104
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 0, %117
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %98
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %6, align 4
  br label %93

126:                                              ; preds = %93
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 0, i32* %131, align 4
  ret void
}

declare dso_local float @SIN(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
