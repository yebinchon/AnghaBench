; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_detection.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { float, float, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_detection(%struct.TYPE_16__* noalias sret %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float %10, float %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_17__, align 8
  %27 = alloca %struct.TYPE_15__, align 4
  %28 = alloca %struct.TYPE_15__, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca i32, align 4
  store i32 %1, i32* %13, align 4
  store i8** %2, i8*** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store float %10, float* %22, align 4
  store float %11, float* %23, align 4
  %38 = load i8**, i8*** %14, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i8** @get_random_paths(i8** %38, i32 %39, i32 %40)
  store i8** %41, i8*** %24, align 8
  %42 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 40, i1 false)
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @calloc(i32 %49, i32 8)
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %55, 3
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %18, align 4
  %62 = mul nsw i32 5, %61
  %63 = call i32* @make_matrix(i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store i32* %63, i32** %64, align 8
  %65 = bitcast %struct.TYPE_17__* %59 to i8*
  %66 = bitcast %struct.TYPE_17__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  store i32 0, i32* %25, align 4
  br label %67

67:                                               ; preds = %239, %12
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %242

71:                                               ; preds = %67
  %72 = load i8**, i8*** %24, align 8
  %73 = load i32, i32* %25, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call { <2 x float>, i64 } @load_image_color(i8* %76, i32 0, i32 0)
  %78 = bitcast %struct.TYPE_15__* %27 to { <2 x float>, i64 }*
  %79 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %78, i32 0, i32 0
  %80 = extractvalue { <2 x float>, i64 } %77, 0
  store <2 x float> %80, <2 x float>* %79, align 4
  %81 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %78, i32 0, i32 1
  %82 = extractvalue { <2 x float>, i64 } %77, 1
  store i64 %82, i64* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call { <2 x float>, i64 } @make_image(i32 %83, i32 %84, i32 %86)
  %88 = bitcast %struct.TYPE_15__* %28 to { <2 x float>, i64 }*
  %89 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %88, i32 0, i32 0
  %90 = extractvalue { <2 x float>, i64 } %87, 0
  store <2 x float> %90, <2 x float>* %89, align 4
  %91 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %88, i32 0, i32 1
  %92 = extractvalue { <2 x float>, i64 } %87, 1
  store i64 %92, i64* %91, align 4
  %93 = bitcast %struct.TYPE_15__* %28 to { <2 x float>, i64 }*
  %94 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %93, i32 0, i32 0
  %95 = load <2 x float>, <2 x float>* %94, align 4
  %96 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 4
  %98 = call i32 @fill_image(<2 x float> %95, i64 %97, double 5.000000e-01)
  %99 = load float, float* %20, align 4
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %101 = load float, float* %100, align 4
  %102 = fmul float %99, %101
  store float %102, float* %29, align 4
  %103 = load float, float* %20, align 4
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = fmul float %103, %105
  store float %106, float* %30, align 4
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %108 = load float, float* %107, align 4
  %109 = load float, float* %29, align 4
  %110 = fneg float %109
  %111 = load float, float* %29, align 4
  %112 = fptosi float %111 to i32
  %113 = call float @rand_uniform(float %110, i32 %112)
  %114 = fadd float %108, %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %116 = load float, float* %115, align 4
  %117 = load float, float* %30, align 4
  %118 = fneg float %117
  %119 = load float, float* %30, align 4
  %120 = fptosi float %119 to i32
  %121 = call float @rand_uniform(float %118, i32 %120)
  %122 = fadd float %116, %121
  %123 = fdiv float %114, %122
  store float %123, float* %31, align 4
  store float 1.000000e+00, float* %32, align 4
  %124 = load float, float* %31, align 4
  %125 = fcmp olt float %124, 1.000000e+00
  br i1 %125, label %126, label %134

126:                                              ; preds = %71
  %127 = load float, float* %32, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sitofp i32 %128 to float
  %130 = fmul float %127, %129
  store float %130, float* %34, align 4
  %131 = load float, float* %34, align 4
  %132 = load float, float* %31, align 4
  %133 = fmul float %131, %132
  store float %133, float* %33, align 4
  br label %142

134:                                              ; preds = %71
  %135 = load float, float* %32, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sitofp i32 %136 to float
  %138 = fmul float %135, %137
  store float %138, float* %33, align 4
  %139 = load float, float* %33, align 4
  %140 = load float, float* %31, align 4
  %141 = fdiv float %139, %140
  store float %141, float* %34, align 4
  br label %142

142:                                              ; preds = %134, %126
  %143 = load i32, i32* %16, align 4
  %144 = sitofp i32 %143 to float
  %145 = load float, float* %33, align 4
  %146 = fsub float %144, %145
  %147 = fptosi float %146 to i32
  %148 = call float @rand_uniform(float 0.000000e+00, i32 %147)
  store float %148, float* %35, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sitofp i32 %149 to float
  %151 = load float, float* %34, align 4
  %152 = fsub float %150, %151
  %153 = fptosi float %152 to i32
  %154 = call float @rand_uniform(float 0.000000e+00, i32 %153)
  store float %154, float* %36, align 4
  %155 = load float, float* %33, align 4
  %156 = load float, float* %34, align 4
  %157 = load float, float* %35, align 4
  %158 = load float, float* %36, align 4
  %159 = bitcast %struct.TYPE_15__* %27 to { <2 x float>, i64 }*
  %160 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %159, i32 0, i32 0
  %161 = load <2 x float>, <2 x float>* %160, align 4
  %162 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %159, i32 0, i32 1
  %163 = load i64, i64* %162, align 4
  %164 = bitcast %struct.TYPE_15__* %28 to { <2 x float>, i64 }*
  %165 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %164, i32 0, i32 0
  %166 = load <2 x float>, <2 x float>* %165, align 4
  %167 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167, align 4
  %169 = call i32 @place_image(<2 x float> %161, i64 %163, float %155, float %156, float %157, float %158, <2 x float> %166, i64 %168)
  %170 = load float, float* %21, align 4
  %171 = load float, float* %22, align 4
  %172 = load float, float* %23, align 4
  %173 = bitcast %struct.TYPE_15__* %28 to { <2 x float>, i64 }*
  %174 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %173, i32 0, i32 0
  %175 = load <2 x float>, <2 x float>* %174, align 4
  %176 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %173, i32 0, i32 1
  %177 = load i64, i64* %176, align 4
  %178 = call i32 @random_distort_image(<2 x float> %175, i64 %177, float %170, float %171, float %172)
  %179 = call i32 (...) @rand()
  %180 = srem i32 %179, 2
  store i32 %180, i32* %37, align 4
  %181 = load i32, i32* %37, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %142
  %184 = bitcast %struct.TYPE_15__* %28 to { <2 x float>, i64 }*
  %185 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %184, i32 0, i32 0
  %186 = load <2 x float>, <2 x float>* %185, align 4
  %187 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %184, i32 0, i32 1
  %188 = load i64, i64* %187, align 4
  %189 = call i32 @flip_image(<2 x float> %186, i64 %188)
  br label %190

190:                                              ; preds = %183, %142
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  %199 = load i8**, i8*** %24, align 8
  %200 = load i32, i32* %25, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* %18, align 4
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %25, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %37, align 4
  %214 = load float, float* %35, align 4
  %215 = fneg float %214
  %216 = load i32, i32* %16, align 4
  %217 = sitofp i32 %216 to float
  %218 = fdiv float %215, %217
  %219 = load float, float* %36, align 4
  %220 = fneg float %219
  %221 = load i32, i32* %17, align 4
  %222 = sitofp i32 %221 to float
  %223 = fdiv float %220, %222
  %224 = load float, float* %33, align 4
  %225 = load i32, i32* %16, align 4
  %226 = sitofp i32 %225 to float
  %227 = fdiv float %224, %226
  %228 = load float, float* %34, align 4
  %229 = load i32, i32* %17, align 4
  %230 = sitofp i32 %229 to float
  %231 = fdiv float %228, %230
  %232 = call i32 @fill_truth_detection(i8* %203, i32 %204, i32 %211, i32 %212, i32 %213, float %218, float %223, float %227, float %231)
  %233 = bitcast %struct.TYPE_15__* %27 to { <2 x float>, i64 }*
  %234 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %233, i32 0, i32 0
  %235 = load <2 x float>, <2 x float>* %234, align 4
  %236 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %233, i32 0, i32 1
  %237 = load i64, i64* %236, align 4
  %238 = call i32 @free_image(<2 x float> %235, i64 %237)
  br label %239

239:                                              ; preds = %190
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %25, align 4
  br label %67

242:                                              ; preds = %67
  %243 = load i8**, i8*** %24, align 8
  %244 = call i32 @free(i8** %243)
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @make_matrix(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { <2 x float>, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { <2 x float>, i64 } @make_image(i32, i32, i32) #1

declare dso_local i32 @fill_image(<2 x float>, i64, double) #1

declare dso_local float @rand_uniform(float, i32) #1

declare dso_local i32 @place_image(<2 x float>, i64, float, float, float, float, <2 x float>, i64) #1

declare dso_local i32 @random_distort_image(<2 x float>, i64, float, float, float) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @flip_image(<2 x float>, i64) #1

declare dso_local i32 @fill_truth_detection(i8*, i32, i32, i32, i32, float, float, float, float) #1

declare dso_local i32 @free_image(<2 x float>, i64) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
