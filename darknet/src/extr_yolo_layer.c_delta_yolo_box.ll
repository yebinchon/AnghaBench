; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_delta_yolo_box.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_delta_yolo_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @delta_yolo_box(i64 %0, i64 %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, float* %12, float %13, i32 %14) #0 {
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_6__, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = bitcast %struct.TYPE_6__* %16 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  store i64 %0, i64* %37, align 4
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  store i64 %1, i64* %38, align 4
  store float* %2, float** %17, align 8
  store float* %3, float** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store float* %12, float** %27, align 8
  store float %13, float* %28, align 4
  store i32 %14, i32* %29, align 4
  %39 = load float*, float** %17, align 8
  %40 = load float*, float** %18, align 8
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %24, align 4
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* %26, align 4
  %49 = load i32, i32* %29, align 4
  %50 = call { i64, i64 } @get_yolo_box(float* %39, float* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = bitcast %struct.TYPE_6__* %30 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %50, 0
  store i64 %53, i64* %52, align 4
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %50, 1
  store i64 %55, i64* %54, align 4
  %56 = bitcast %struct.TYPE_6__* %30 to { i64, i64 }*
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64, i64* %59, align 4
  %61 = bitcast %struct.TYPE_6__* %16 to { i64, i64 }*
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 4
  %66 = call float @box_iou(i64 %58, i64 %60, i64 %63, i64 %65)
  store float %66, float* %31, align 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %23, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %21, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sitofp i32 %72 to float
  store float %73, float* %32, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %24, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %22, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sitofp i32 %79 to float
  store float %80, float* %33, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %25, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sitofp i32 %84 to float
  %86 = load float*, float** %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = mul nsw i32 2, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %86, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fdiv float %85, %91
  %93 = fptosi float %92 to i32
  %94 = call float @log(i32 %93)
  store float %94, float* %34, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %26, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sitofp i32 %98 to float
  %100 = load float*, float** %18, align 8
  %101 = load i32, i32* %19, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %100, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fdiv float %99, %106
  %108 = fptosi float %107 to i32
  %109 = call float @log(i32 %108)
  store float %109, float* %35, align 4
  %110 = load float, float* %28, align 4
  %111 = load float, float* %32, align 4
  %112 = load float*, float** %17, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %29, align 4
  %115 = mul nsw i32 0, %114
  %116 = add nsw i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %112, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fsub float %111, %119
  %121 = fmul float %110, %120
  %122 = load float*, float** %27, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %29, align 4
  %125 = mul nsw i32 0, %124
  %126 = add nsw i32 %123, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %122, i64 %127
  store float %121, float* %128, align 4
  %129 = load float, float* %28, align 4
  %130 = load float, float* %33, align 4
  %131 = load float*, float** %17, align 8
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %29, align 4
  %134 = mul nsw i32 1, %133
  %135 = add nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %131, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fsub float %130, %138
  %140 = fmul float %129, %139
  %141 = load float*, float** %27, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %29, align 4
  %144 = mul nsw i32 1, %143
  %145 = add nsw i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %141, i64 %146
  store float %140, float* %147, align 4
  %148 = load float, float* %28, align 4
  %149 = load float, float* %34, align 4
  %150 = load float*, float** %17, align 8
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %29, align 4
  %153 = mul nsw i32 2, %152
  %154 = add nsw i32 %151, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %150, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fsub float %149, %157
  %159 = fmul float %148, %158
  %160 = load float*, float** %27, align 8
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %29, align 4
  %163 = mul nsw i32 2, %162
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %160, i64 %165
  store float %159, float* %166, align 4
  %167 = load float, float* %28, align 4
  %168 = load float, float* %35, align 4
  %169 = load float*, float** %17, align 8
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %29, align 4
  %172 = mul nsw i32 3, %171
  %173 = add nsw i32 %170, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %169, i64 %174
  %176 = load float, float* %175, align 4
  %177 = fsub float %168, %176
  %178 = fmul float %167, %177
  %179 = load float*, float** %27, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %29, align 4
  %182 = mul nsw i32 3, %181
  %183 = add nsw i32 %180, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %179, i64 %184
  store float %178, float* %185, align 4
  %186 = load float, float* %31, align 4
  ret float %186
}

declare dso_local { i64, i64 } @get_yolo_box(float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local float @box_iou(i64, i64, i64, i64) #1

declare dso_local float @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
