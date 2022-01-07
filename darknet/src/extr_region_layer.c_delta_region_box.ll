; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @delta_region_box(i64 %0, i64 %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, float* %10, float %11, i32 %12) #0 {
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_6__, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = bitcast %struct.TYPE_6__* %14 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  store i64 %0, i64* %33, align 4
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  store i64 %1, i64* %34, align 4
  store float* %2, float** %15, align 8
  store float* %3, float** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store float* %10, float** %23, align 8
  store float %11, float* %24, align 4
  store i32 %12, i32* %25, align 4
  %35 = load float*, float** %15, align 8
  %36 = load float*, float** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %25, align 4
  %44 = call { i64, i64 } @get_region_box(float* %35, float* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = bitcast %struct.TYPE_6__* %26 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %44, 0
  store i64 %47, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %44, 1
  store i64 %49, i64* %48, align 4
  %50 = bitcast %struct.TYPE_6__* %26 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 4
  %55 = bitcast %struct.TYPE_6__* %14 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 4
  %60 = call float @box_iou(i64 %52, i64 %54, i64 %57, i64 %59)
  store float %60, float* %27, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %21, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sitofp i32 %66 to float
  store float %67, float* %28, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %22, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %20, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sitofp i32 %73 to float
  store float %74, float* %29, align 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %21, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sitofp i32 %78 to float
  %80 = load float*, float** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %80, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fdiv float %79, %85
  %87 = fptosi float %86 to i32
  %88 = call float @log(i32 %87)
  store float %88, float* %30, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %22, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sitofp i32 %92 to float
  %94 = load float*, float** %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %94, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fdiv float %93, %100
  %102 = fptosi float %101 to i32
  %103 = call float @log(i32 %102)
  store float %103, float* %31, align 4
  %104 = load float, float* %24, align 4
  %105 = load float, float* %28, align 4
  %106 = load float*, float** %15, align 8
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %25, align 4
  %109 = mul nsw i32 0, %108
  %110 = add nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %106, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fsub float %105, %113
  %115 = fmul float %104, %114
  %116 = load float*, float** %23, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %25, align 4
  %119 = mul nsw i32 0, %118
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %116, i64 %121
  store float %115, float* %122, align 4
  %123 = load float, float* %24, align 4
  %124 = load float, float* %29, align 4
  %125 = load float*, float** %15, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %25, align 4
  %128 = mul nsw i32 1, %127
  %129 = add nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %125, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fsub float %124, %132
  %134 = fmul float %123, %133
  %135 = load float*, float** %23, align 8
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %25, align 4
  %138 = mul nsw i32 1, %137
  %139 = add nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %135, i64 %140
  store float %134, float* %141, align 4
  %142 = load float, float* %24, align 4
  %143 = load float, float* %30, align 4
  %144 = load float*, float** %15, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %25, align 4
  %147 = mul nsw i32 2, %146
  %148 = add nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %144, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fsub float %143, %151
  %153 = fmul float %142, %152
  %154 = load float*, float** %23, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %25, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %154, i64 %159
  store float %153, float* %160, align 4
  %161 = load float, float* %24, align 4
  %162 = load float, float* %31, align 4
  %163 = load float*, float** %15, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %25, align 4
  %166 = mul nsw i32 3, %165
  %167 = add nsw i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %163, i64 %168
  %170 = load float, float* %169, align 4
  %171 = fsub float %162, %170
  %172 = fmul float %161, %171
  %173 = load float*, float** %23, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %25, align 4
  %176 = mul nsw i32 3, %175
  %177 = add nsw i32 %174, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %173, i64 %178
  store float %172, float* %179, align 4
  %180 = load float, float* %27, align 4
  ret float %180
}

declare dso_local { i64, i64 } @get_region_box(float*, float*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local float @box_iou(i64, i64, i64, i64) #1

declare dso_local float @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
