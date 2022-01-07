; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_detection_layer.c_get_detection_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_detection_layer.c_get_detection_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { float, float*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, float, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_detection_detections(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i32 %1, i32 %2, float %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %24 = load float*, float** %23, align 8
  store float* %24, float** %13, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %214, %5
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %28, %30
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %217

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %34, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %38, %40
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %210, %33
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %213

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %48, %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %16, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %62, %64
  %66 = add nsw i32 %61, %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %17, align 4
  %69 = load float*, float** %13, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  store float %73, float* %18, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %80, %82
  %84 = mul nsw i32 %78, %83
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %85, %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %19, align 4
  %93 = load float*, float** %13, align 8
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 0
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %93, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sitofp i32 %99 to float
  %101 = fadd float %98, %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sitofp i32 %103 to float
  %105 = fdiv float %101, %104
  %106 = load i32, i32* %6, align 4
  %107 = sitofp i32 %106 to float
  %108 = fmul float %105, %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store float %108, float* %109, align 4
  %110 = load float*, float** %13, align 8
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %110, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sitofp i32 %116 to float
  %118 = fadd float %115, %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %118, %121
  %123 = load i32, i32* %7, align 4
  %124 = sitofp i32 %123 to float
  %125 = fmul float %122, %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store float %125, float* %126, align 4
  %127 = load float*, float** %13, align 8
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %127, i64 %130
  %132 = load float, float* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 2, i32 1
  %138 = call i32 @pow(float %132, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = mul nsw i32 %138, %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %140, i32* %141, align 4
  %142 = load float*, float** %13, align 8
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %142, i64 %145
  %147 = load float, float* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 2, i32 1
  %153 = call i32 @pow(float %147, i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 %153, %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = bitcast %struct.TYPE_8__* %161 to i8*
  %163 = bitcast %struct.TYPE_8__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 4 %163, i64 16, i1 false)
  %164 = load float, float* %18, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store float %164, float* %169, align 8
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %206, %47
  %171 = load i32, i32* %11, align 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %209

175:                                              ; preds = %170
  %176 = load i32, i32* %10, align 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %176, %178
  store i32 %179, i32* %21, align 4
  %180 = load float, float* %18, align 4
  %181 = load float*, float** %13, align 8
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fmul float %180, %187
  store float %188, float* %22, align 4
  %189 = load float, float* %22, align 4
  %190 = load float, float* %8, align 4
  %191 = fcmp ogt float %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %175
  %193 = load float, float* %22, align 4
  br label %195

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi float [ %193, %192 ], [ 0.000000e+00, %194 ]
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load float*, float** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %202, i64 %204
  store float %196, float* %205, align 4
  br label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %170

209:                                              ; preds = %170
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %42

213:                                              ; preds = %42
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %25

217:                                              ; preds = %25
  ret void
}

declare dso_local i32 @pow(float, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
