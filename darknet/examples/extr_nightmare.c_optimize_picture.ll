; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_optimize_picture.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_nightmare.c_optimize_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_22__ = type { float, float, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"\0Anet: %d %d %d im: %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optimize_picture(%struct.TYPE_20__* %0, <2 x float> %1, i64 %2, i32 %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__, align 4
  %20 = alloca %struct.TYPE_22__, align 4
  %21 = alloca %struct.TYPE_21__, align 8
  %22 = alloca %struct.TYPE_22__, align 4
  %23 = alloca %struct.TYPE_22__, align 4
  %24 = alloca %struct.TYPE_22__, align 4
  %25 = alloca %struct.TYPE_22__, align 4
  %26 = bitcast %struct.TYPE_22__* %9 to { <2 x float>, i64 }*
  %27 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %26, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %27, align 4
  %28 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %26, i32 0, i32 1
  store i64 %2, i64* %28, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %10, align 8
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  store i32 %7, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = call i32 (...) @rand()
  %34 = srem i32 %33, 16
  %35 = sub nsw i32 %34, 8
  store i32 %35, i32* %16, align 4
  %36 = call i32 (...) @rand()
  %37 = srem i32 %36, 16
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %17, align 4
  %39 = call i32 (...) @rand()
  %40 = srem i32 %39, 2
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = bitcast %struct.TYPE_22__* %9 to { <2 x float>, i64 }*
  %48 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %47, i32 0, i32 0
  %49 = load <2 x float>, <2 x float>* %48, align 4
  %50 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 4
  %52 = call { <2 x float>, i64 } @crop_image(<2 x float> %49, i64 %51, i32 %41, i32 %42, float %44, float %46)
  %53 = bitcast %struct.TYPE_22__* %19 to { <2 x float>, i64 }*
  %54 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { <2 x float>, i64 } %52, 0
  store <2 x float> %55, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { <2 x float>, i64 } %52, 1
  store i64 %57, i64* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = load float, float* %12, align 4
  %61 = fmul float %59, %60
  %62 = fptosi float %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = load float, float* %12, align 4
  %66 = fmul float %64, %65
  %67 = fptosi float %66 to i32
  %68 = bitcast %struct.TYPE_22__* %19 to { <2 x float>, i64 }*
  %69 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %68, i32 0, i32 0
  %70 = load <2 x float>, <2 x float>* %69, align 4
  %71 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 4
  %73 = call { <2 x float>, i64 } @resize_image(<2 x float> %70, i64 %72, i32 %62, i32 %67)
  %74 = bitcast %struct.TYPE_22__* %20 to { <2 x float>, i64 }*
  %75 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { <2 x float>, i64 } %73, 0
  store <2 x float> %76, <2 x float>* %75, align 4
  %77 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { <2 x float>, i64 } %73, 1
  store i64 %78, i64* %77, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %8
  %82 = bitcast %struct.TYPE_22__* %20 to { <2 x float>, i64 }*
  %83 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %82, i32 0, i32 0
  %84 = load <2 x float>, <2 x float>* %83, align 4
  %85 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %82, i32 0, i32 1
  %86 = load i64, i64* %85, align 4
  %87 = call i32 @flip_image(<2 x float> %84, i64 %86)
  br label %88

88:                                               ; preds = %81, %8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = call i32 @resize_network(%struct.TYPE_20__* %89, float %91, float %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i64 %102
  %104 = bitcast %struct.TYPE_21__* %21 to i8*
  %105 = bitcast %struct.TYPE_21__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 32, i1 false)
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %107 = load float, float* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call { <2 x float>, i64 } @make_image(float %107, float %109, i32 %111)
  %113 = bitcast %struct.TYPE_22__* %22 to { <2 x float>, i64 }*
  %114 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %113, i32 0, i32 0
  %115 = extractvalue { <2 x float>, i64 } %112, 0
  store <2 x float> %115, <2 x float>* %114, align 4
  %116 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %113, i32 0, i32 1
  %117 = extractvalue { <2 x float>, i64 } %112, 1
  store i64 %117, i64* %116, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %128 = load float, float* %127, align 4
  %129 = fptosi float %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = fptosi float %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %134)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @copy_cpu(i32 %138, i32 %140, i32 1, i32 %143, i32 1)
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = call i32 @forward_network(%struct.TYPE_20__* %149)
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @copy_cpu(i32 %152, i32 %154, i32 1, i32 %156, i32 1)
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load float, float* %14, align 4
  %165 = call i32 @calculate_loss(i32 %159, i32 %161, i32 %163, float %164)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = call i32 @backward_network(%struct.TYPE_20__* %166)
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %88
  %171 = bitcast %struct.TYPE_22__* %22 to { <2 x float>, i64 }*
  %172 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %171, i32 0, i32 0
  %173 = load <2 x float>, <2 x float>* %172, align 4
  %174 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %171, i32 0, i32 1
  %175 = load i64, i64* %174, align 4
  %176 = call i32 @flip_image(<2 x float> %173, i64 %175)
  br label %177

177:                                              ; preds = %170, %88
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %179 = load float, float* %178, align 4
  %180 = fptosi float %179 to i32
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %182 = load float, float* %181, align 4
  %183 = fptosi float %182 to i32
  %184 = bitcast %struct.TYPE_22__* %22 to { <2 x float>, i64 }*
  %185 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %184, i32 0, i32 0
  %186 = load <2 x float>, <2 x float>* %185, align 4
  %187 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %184, i32 0, i32 1
  %188 = load i64, i64* %187, align 4
  %189 = call { <2 x float>, i64 } @resize_image(<2 x float> %186, i64 %188, i32 %180, i32 %183)
  %190 = bitcast %struct.TYPE_22__* %23 to { <2 x float>, i64 }*
  %191 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %190, i32 0, i32 0
  %192 = extractvalue { <2 x float>, i64 } %189, 0
  store <2 x float> %192, <2 x float>* %191, align 4
  %193 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %190, i32 0, i32 1
  %194 = extractvalue { <2 x float>, i64 } %189, 1
  store i64 %194, i64* %193, align 4
  %195 = load i32, i32* %16, align 4
  %196 = sub nsw i32 0, %195
  %197 = load i32, i32* %17, align 4
  %198 = sub nsw i32 0, %197
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %200 = load float, float* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %202 = load float, float* %201, align 4
  %203 = bitcast %struct.TYPE_22__* %23 to { <2 x float>, i64 }*
  %204 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %203, i32 0, i32 0
  %205 = load <2 x float>, <2 x float>* %204, align 4
  %206 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %203, i32 0, i32 1
  %207 = load i64, i64* %206, align 4
  %208 = call { <2 x float>, i64 } @crop_image(<2 x float> %205, i64 %207, i32 %196, i32 %198, float %200, float %202)
  %209 = bitcast %struct.TYPE_22__* %24 to { <2 x float>, i64 }*
  %210 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %209, i32 0, i32 0
  %211 = extractvalue { <2 x float>, i64 } %208, 0
  store <2 x float> %211, <2 x float>* %210, align 4
  %212 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %209, i32 0, i32 1
  %213 = extractvalue { <2 x float>, i64 } %208, 1
  store i64 %213, i64* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %215 = load float, float* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %217 = load float, float* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call { <2 x float>, i64 } @make_image(float %215, float %217, i32 %219)
  %221 = bitcast %struct.TYPE_22__* %25 to { <2 x float>, i64 }*
  %222 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %221, i32 0, i32 0
  %223 = extractvalue { <2 x float>, i64 } %220, 0
  store <2 x float> %223, <2 x float>* %222, align 4
  %224 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %221, i32 0, i32 1
  %225 = extractvalue { <2 x float>, i64 } %220, 1
  store i64 %225, i64* %224, align 4
  %226 = bitcast %struct.TYPE_22__* %25 to { <2 x float>, i64 }*
  %227 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %226, i32 0, i32 0
  %228 = load <2 x float>, <2 x float>* %227, align 4
  %229 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %226, i32 0, i32 1
  %230 = load i64, i64* %229, align 4
  %231 = call i32 @fill_image(<2 x float> %228, i64 %230, double 5.000000e-01)
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %233 = load float, float* %232, align 4
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %235 = load float, float* %234, align 4
  %236 = fmul float %233, %235
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = sitofp i32 %238 to float
  %240 = fmul float %236, %239
  %241 = fptosi float %240 to i32
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @axpy_cpu(i32 %241, float -1.000000e+00, i32 %243, i32 1, i32 %245, i32 1)
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %248 = load float, float* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %250 = load float, float* %249, align 4
  %251 = fmul float %248, %250
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = sitofp i32 %253 to float
  %255 = fmul float %251, %254
  %256 = fptosi float %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @axpy_cpu(i32 %256, float 0x3FB99999A0000000, i32 %258, i32 1, i32 %260, i32 1)
  %262 = load i32, i32* %15, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %177
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %268 = load float, float* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %270 = load float, float* %269, align 4
  %271 = fmul float %268, %270
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = sitofp i32 %273 to float
  %275 = fmul float %271, %274
  %276 = fptosi float %275 to i32
  %277 = call i32 @normalize_array(i32 %266, i32 %276)
  br label %278

278:                                              ; preds = %264, %177
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %280 = load float, float* %279, align 4
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %282 = load float, float* %281, align 4
  %283 = fmul float %280, %282
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = sitofp i32 %285 to float
  %287 = fmul float %283, %286
  %288 = fptosi float %287 to i32
  %289 = load float, float* %13, align 4
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @axpy_cpu(i32 %288, float %289, i32 %291, i32 1, i32 %293, i32 1)
  %295 = bitcast %struct.TYPE_22__* %9 to { <2 x float>, i64 }*
  %296 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %295, i32 0, i32 0
  %297 = load <2 x float>, <2 x float>* %296, align 4
  %298 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %295, i32 0, i32 1
  %299 = load i64, i64* %298, align 4
  %300 = call i32 @constrain_image(<2 x float> %297, i64 %299)
  %301 = bitcast %struct.TYPE_22__* %19 to { <2 x float>, i64 }*
  %302 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %301, i32 0, i32 0
  %303 = load <2 x float>, <2 x float>* %302, align 4
  %304 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %301, i32 0, i32 1
  %305 = load i64, i64* %304, align 4
  %306 = call i32 @free_image(<2 x float> %303, i64 %305)
  %307 = bitcast %struct.TYPE_22__* %20 to { <2 x float>, i64 }*
  %308 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %307, i32 0, i32 0
  %309 = load <2 x float>, <2 x float>* %308, align 4
  %310 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %307, i32 0, i32 1
  %311 = load i64, i64* %310, align 4
  %312 = call i32 @free_image(<2 x float> %309, i64 %311)
  %313 = bitcast %struct.TYPE_22__* %22 to { <2 x float>, i64 }*
  %314 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %313, i32 0, i32 0
  %315 = load <2 x float>, <2 x float>* %314, align 4
  %316 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %313, i32 0, i32 1
  %317 = load i64, i64* %316, align 4
  %318 = call i32 @free_image(<2 x float> %315, i64 %317)
  %319 = bitcast %struct.TYPE_22__* %23 to { <2 x float>, i64 }*
  %320 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %319, i32 0, i32 0
  %321 = load <2 x float>, <2 x float>* %320, align 4
  %322 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %319, i32 0, i32 1
  %323 = load i64, i64* %322, align 4
  %324 = call i32 @free_image(<2 x float> %321, i64 %323)
  %325 = bitcast %struct.TYPE_22__* %24 to { <2 x float>, i64 }*
  %326 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %325, i32 0, i32 0
  %327 = load <2 x float>, <2 x float>* %326, align 4
  %328 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %325, i32 0, i32 1
  %329 = load i64, i64* %328, align 4
  %330 = call i32 @free_image(<2 x float> %327, i64 %329)
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local { <2 x float>, i64 } @crop_image(<2 x float>, i64, i32, i32, float, float) #1

declare dso_local { <2 x float>, i64 } @resize_image(<2 x float>, i64, i32, i32) #1

declare dso_local i32 @flip_image(<2 x float>, i64) #1

declare dso_local i32 @resize_network(%struct.TYPE_20__*, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { <2 x float>, i64 } @make_image(float, float, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @forward_network(%struct.TYPE_20__*) #1

declare dso_local i32 @calculate_loss(i32, i32, i32, float) #1

declare dso_local i32 @backward_network(%struct.TYPE_20__*) #1

declare dso_local i32 @fill_image(<2 x float>, i64, double) #1

declare dso_local i32 @axpy_cpu(i32, float, i32, i32, i32, i32) #1

declare dso_local i32 @normalize_array(i32, i32) #1

declare dso_local i32 @constrain_image(<2 x float>, i64) #1

declare dso_local i32 @free_image(<2 x float>, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
