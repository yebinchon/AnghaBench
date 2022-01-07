; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_region.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_region(%struct.TYPE_16__* noalias sret %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float %10, float %11) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_17__, align 8
  %28 = alloca %struct.TYPE_15__, align 4
  %29 = alloca { i64, i32 }, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_15__, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca { i64, i32 }, align 8
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca %struct.TYPE_15__, align 4
  %49 = alloca { i64, i32 }, align 4
  %50 = alloca { i64, i32 }, align 8
  %51 = alloca { i64, i32 }, align 4
  %52 = alloca { i64, i32 }, align 4
  %53 = alloca { i64, i32 }, align 4
  %54 = alloca { i64, i32 }, align 4
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
  %55 = load i8**, i8*** %14, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i8** @get_random_paths(i8** %55, i32 %56, i32 %57)
  store i8** %58, i8*** %24, align 8
  %59 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %59, i8 0, i64 40, i1 false)
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @calloc(i32 %66, i32 8)
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul nsw i32 %70, %71
  %73 = mul nsw i32 %72, 3
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 5, %79
  %81 = mul nsw i32 %78, %80
  store i32 %81, i32* %26, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %26, align 4
  %85 = call i32* @make_matrix(i32 %83, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i32* %85, i32** %86, align 8
  %87 = bitcast %struct.TYPE_17__* %82 to i8*
  %88 = bitcast %struct.TYPE_17__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  store i32 0, i32* %25, align 4
  br label %89

89:                                               ; preds = %261, %12
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %264

93:                                               ; preds = %89
  %94 = load i8**, i8*** %24, align 8
  %95 = load i32, i32* %25, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call { i64, i32 } @load_image_color(i8* %98, i32 0, i32 0)
  store { i64, i32 } %99, { i64, i32 }* %29, align 8
  %100 = bitcast { i64, i32 }* %29 to i8*
  %101 = bitcast %struct.TYPE_15__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 8 %100, i64 12, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %30, align 4
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %31, align 4
  %106 = load i32, i32* %31, align 4
  %107 = sitofp i32 %106 to float
  %108 = load float, float* %20, align 4
  %109 = fmul float %107, %108
  %110 = fptosi float %109 to i32
  store i32 %110, i32* %32, align 4
  %111 = load i32, i32* %30, align 4
  %112 = sitofp i32 %111 to float
  %113 = load float, float* %20, align 4
  %114 = fmul float %112, %113
  %115 = fptosi float %114 to i32
  store i32 %115, i32* %33, align 4
  %116 = load i32, i32* %32, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32, i32* %32, align 4
  %119 = call i32 @rand_uniform(i32 %117, i32 %118)
  store i32 %119, i32* %34, align 4
  %120 = load i32, i32* %32, align 4
  %121 = sub nsw i32 0, %120
  %122 = load i32, i32* %32, align 4
  %123 = call i32 @rand_uniform(i32 %121, i32 %122)
  store i32 %123, i32* %35, align 4
  %124 = load i32, i32* %33, align 4
  %125 = sub nsw i32 0, %124
  %126 = load i32, i32* %33, align 4
  %127 = call i32 @rand_uniform(i32 %125, i32 %126)
  store i32 %127, i32* %36, align 4
  %128 = load i32, i32* %33, align 4
  %129 = sub nsw i32 0, %128
  %130 = load i32, i32* %33, align 4
  %131 = call i32 @rand_uniform(i32 %129, i32 %130)
  store i32 %131, i32* %37, align 4
  %132 = load i32, i32* %31, align 4
  %133 = load i32, i32* %34, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* %35, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %38, align 4
  %137 = load i32, i32* %30, align 4
  %138 = load i32, i32* %36, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %37, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %39, align 4
  %142 = load i32, i32* %38, align 4
  %143 = sitofp i32 %142 to float
  %144 = load i32, i32* %31, align 4
  %145 = sitofp i32 %144 to float
  %146 = fdiv float %143, %145
  store float %146, float* %40, align 4
  %147 = load i32, i32* %39, align 4
  %148 = sitofp i32 %147 to float
  %149 = load i32, i32* %30, align 4
  %150 = sitofp i32 %149 to float
  %151 = fdiv float %148, %150
  store float %151, float* %41, align 4
  %152 = call i32 (...) @rand()
  %153 = srem i32 %152, 2
  store i32 %153, i32* %42, align 4
  %154 = load i32, i32* %34, align 4
  %155 = load i32, i32* %36, align 4
  %156 = load i32, i32* %38, align 4
  %157 = load i32, i32* %39, align 4
  %158 = bitcast { i64, i32 }* %44 to i8*
  %159 = bitcast %struct.TYPE_15__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 12, i1 false)
  %160 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %161 = load i64, i64* %160, align 4
  %162 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call { i64, i32 } @crop_image(i64 %161, i32 %163, i32 %154, i32 %155, i32 %156, i32 %157)
  store { i64, i32 } %164, { i64, i32 }* %45, align 8
  %165 = bitcast { i64, i32 }* %45 to i8*
  %166 = bitcast %struct.TYPE_15__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 8 %165, i64 12, i1 false)
  %167 = load i32, i32* %34, align 4
  %168 = sitofp i32 %167 to float
  %169 = load i32, i32* %31, align 4
  %170 = sitofp i32 %169 to float
  %171 = fdiv float %168, %170
  %172 = load float, float* %40, align 4
  %173 = fdiv float %171, %172
  store float %173, float* %46, align 4
  %174 = load i32, i32* %36, align 4
  %175 = sitofp i32 %174 to float
  %176 = load i32, i32* %30, align 4
  %177 = sitofp i32 %176 to float
  %178 = fdiv float %175, %177
  %179 = load float, float* %41, align 4
  %180 = fdiv float %178, %179
  store float %180, float* %47, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = bitcast { i64, i32 }* %49 to i8*
  %184 = bitcast %struct.TYPE_15__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 12, i1 false)
  %185 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %186 = load i64, i64* %185, align 4
  %187 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call { i64, i32 } @resize_image(i64 %186, i32 %188, i32 %181, i32 %182)
  store { i64, i32 } %189, { i64, i32 }* %50, align 8
  %190 = bitcast { i64, i32 }* %50 to i8*
  %191 = bitcast %struct.TYPE_15__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 8 %190, i64 12, i1 false)
  %192 = load i32, i32* %42, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %93
  %195 = bitcast { i64, i32 }* %51 to i8*
  %196 = bitcast %struct.TYPE_15__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 %196, i64 12, i1 false)
  %197 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %51, i32 0, i32 0
  %198 = load i64, i64* %197, align 4
  %199 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %51, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @flip_image(i64 %198, i32 %200)
  br label %202

202:                                              ; preds = %194, %93
  %203 = load float, float* %21, align 4
  %204 = load float, float* %22, align 4
  %205 = load float, float* %23, align 4
  %206 = bitcast { i64, i32 }* %52 to i8*
  %207 = bitcast %struct.TYPE_15__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 12, i1 false)
  %208 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 0
  %209 = load i64, i64* %208, align 4
  %210 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @random_distort_image(i64 %209, i32 %211, float %203, float %204, float %205)
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %25, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  %221 = load i8**, i8*** %24, align 8
  %222 = load i32, i32* %25, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %25, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %42, align 4
  %236 = load float, float* %46, align 4
  %237 = load float, float* %47, align 4
  %238 = load float, float* %40, align 4
  %239 = fpext float %238 to double
  %240 = fdiv double 1.000000e+00, %239
  %241 = fptosi double %240 to i32
  %242 = load float, float* %41, align 4
  %243 = fpext float %242 to double
  %244 = fdiv double 1.000000e+00, %243
  %245 = fptosi double %244 to i32
  %246 = call i32 @fill_truth_region(i8* %225, i32 %232, i32 %233, i32 %234, i32 %235, float %236, float %237, i32 %241, i32 %245)
  %247 = bitcast { i64, i32 }* %53 to i8*
  %248 = bitcast %struct.TYPE_15__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %247, i8* align 4 %248, i64 12, i1 false)
  %249 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 0
  %250 = load i64, i64* %249, align 4
  %251 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @free_image(i64 %250, i32 %252)
  %254 = bitcast { i64, i32 }* %54 to i8*
  %255 = bitcast %struct.TYPE_15__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 4 %255, i64 12, i1 false)
  %256 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 0
  %257 = load i64, i64* %256, align 4
  %258 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @free_image(i64 %257, i32 %259)
  br label %261

261:                                              ; preds = %202
  %262 = load i32, i32* %25, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %25, align 4
  br label %89

264:                                              ; preds = %89
  %265 = load i8**, i8*** %24, align 8
  %266 = call i32 @free(i8** %265)
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @make_matrix(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

declare dso_local i32 @rand_uniform(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local { i64, i32 } @crop_image(i64, i32, i32, i32, i32, i32) #1

declare dso_local { i64, i32 } @resize_image(i64, i32, i32, i32) #1

declare dso_local i32 @flip_image(i64, i32) #1

declare dso_local i32 @random_distort_image(i64, i32, float, float, float) #1

declare dso_local i32 @fill_truth_region(i8*, i32, i32, i32, i32, float, float, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
