; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_mask_to_rgb.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_mask_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mask_to_rgb(%struct.TYPE_5__* noalias sret %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  call void @make_image(%struct.TYPE_5__* sret %0, i32 %13, i32 %15, i32 3)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %137, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %140

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 123457
  %23 = load i32, i32* %3, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call float @get_color(i32 2, i32 %25, i32 %26)
  store float %27, float* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call float @get_color(i32 1, i32 %28, i32 %29)
  store float %30, float* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call float @get_color(i32 0, i32 %31, i32 %32)
  store float %33, float* %9, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %133, %20
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %37, %39
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %136

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %45, %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %44, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float, float* %7, align 4
  %58 = fmul float %56, %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 0, %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %64, %66
  %68 = add nsw i32 %61, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %60, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fadd float %71, %58
  store float %72, float* %70, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %74 = load float*, float** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %78, %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %74, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float, float* %8, align 4
  %88 = fmul float %86, %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 1, %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %94, %96
  %98 = add nsw i32 %91, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %90, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fadd float %101, %88
  store float %102, float* %100, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %105, %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %104, i64 %114
  %116 = load float, float* %115, align 4
  %117 = load float, float* %9, align 4
  %118 = fmul float %116, %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %120 = load float*, float** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 2, %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %124, %126
  %128 = add nsw i32 %121, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %120, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fadd float %131, %118
  store float %132, float* %130, align 4
  br label %133

133:                                              ; preds = %42
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %34

136:                                              ; preds = %34
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %16

140:                                              ; preds = %16
  ret void
}

declare dso_local void @make_image(%struct.TYPE_5__* sret, i32, i32, i32) #1

declare dso_local float @get_color(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
