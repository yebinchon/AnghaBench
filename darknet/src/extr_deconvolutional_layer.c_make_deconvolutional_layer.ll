; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_make_deconvolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_make_deconvolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@DECONVOLUTIONAL = common dso_local global i32 0, align 4
@forward_deconvolutional_layer = common dso_local global i32 0, align 4
@backward_deconvolutional_layer = common dso_local global i32 0, align 4
@update_deconvolutional_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"deconv%5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@CUDNN_DATA_FLOAT = common dso_local global i32 0, align 4
@CUDNN_TENSOR_NCHW = common dso_local global i32 0, align 4
@backward_deconvolutional_layer_gpu = common dso_local global i32 0, align 4
@forward_deconvolutional_layer_gpu = common dso_local global i32 0, align 4
@gpu_index = common dso_local global i64 0, align 8
@update_deconvolutional_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_deconvolutional_layer(%struct.TYPE_4__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 %11, i32* %23, align 4
  %26 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 480, i1 false)
  %27 = load i32, i32* @DECONVOLUTIONAL, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 70
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %15, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %16, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %17, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %19, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %18, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 6
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %18, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %18, align 4
  %49 = mul nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 7
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %17, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 8
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %18, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i8* @calloc(i32 %59, i32 4)
  %61 = bitcast i8* %60 to float*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 9
  store float* %61, float** %62, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %18, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %18, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i8* @calloc(i32 %69, i32 4)
  %71 = bitcast i8* %70 to i32*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 10
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i8* @calloc(i32 %73, i32 4)
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 11
  store i32* %75, i32** %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i8* @calloc(i32 %77, i32 4)
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 12
  store i32* %79, i32** %80, align 8
  store float 0x3F947AE140000000, float* %25, align 4
  store i32 0, i32* %24, align 4
  br label %81

81:                                               ; preds = %100, %12
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %18, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %18, align 4
  %89 = mul nsw i32 %87, %88
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %81
  %92 = load float, float* %25, align 4
  %93 = call float (...) @rand_normal()
  %94 = fmul float %92, %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 9
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  store float %94, float* %99, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %24, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %24, align 4
  br label %81

103:                                              ; preds = %81
  store i32 0, i32* %24, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 11
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %24, align 4
  br label %104

117:                                              ; preds = %104
  %118 = load i32, i32* %20, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 13
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %122, %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %125, %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 13
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 2, %130
  %132 = sub nsw i32 %128, %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 14
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %136, %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %139, %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 13
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 2, %144
  %146 = sub nsw i32 %142, %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 15
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 16
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 15
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 14
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %151, %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 16
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %154, %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 17
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %160, %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %163, %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 18
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 15
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to float
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 14
  %174 = load i32, i32* %173, align 4
  %175 = sitofp i32 %174 to float
  %176 = fmul float %172, %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %178, %180
  %182 = sitofp i32 %181 to float
  %183 = fdiv float %176, %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 9
  %185 = load float*, float** %184, align 8
  %186 = call i32 @scal_cpu(i32 %169, float %183, float* %185, i32 1)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 17
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %188, %190
  %192 = call i8* @calloc(i32 %191, i32 4)
  %193 = bitcast i8* %192 to i32*
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 19
  store i32* %193, i32** %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 17
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %196, %198
  %200 = call i8* @calloc(i32 %199, i32 4)
  %201 = bitcast i8* %200 to i32*
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 20
  store i32* %201, i32** %202, align 8
  %203 = load i32, i32* @forward_deconvolutional_layer, align 4
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 69
  store i32 %203, i32* %204, align 8
  %205 = load i32, i32* @backward_deconvolutional_layer, align 4
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 68
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @update_deconvolutional_layer, align 4
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 67
  store i32 %207, i32* %208, align 8
  %209 = load i32, i32* %22, align 4
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 21
  store i32 %209, i32* %210, align 8
  %211 = load i32, i32* %22, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %267

213:                                              ; preds = %117
  %214 = load i32, i32* %17, align 4
  %215 = call i8* @calloc(i32 %214, i32 4)
  %216 = bitcast i8* %215 to i32*
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 22
  store i32* %216, i32** %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = call i8* @calloc(i32 %218, i32 4)
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 66
  store i8* %219, i8** %220, align 8
  store i32 0, i32* %24, align 4
  br label %221

221:                                              ; preds = %231, %213
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 22
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %24, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %225
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %221

234:                                              ; preds = %221
  %235 = load i32, i32* %17, align 4
  %236 = call i8* @calloc(i32 %235, i32 4)
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 65
  store i8* %236, i8** %237, align 8
  %238 = load i32, i32* %17, align 4
  %239 = call i8* @calloc(i32 %238, i32 4)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 64
  store i8* %239, i8** %240, align 8
  %241 = load i32, i32* %17, align 4
  %242 = call i8* @calloc(i32 %241, i32 4)
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 63
  store i8* %242, i8** %243, align 8
  %244 = load i32, i32* %17, align 4
  %245 = call i8* @calloc(i32 %244, i32 4)
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 62
  store i8* %245, i8** %246, align 8
  %247 = load i32, i32* %17, align 4
  %248 = call i8* @calloc(i32 %247, i32 4)
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 61
  store i8* %248, i8** %249, align 8
  %250 = load i32, i32* %17, align 4
  %251 = call i8* @calloc(i32 %250, i32 4)
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 60
  store i8* %251, i8** %252, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 17
  %256 = load i32, i32* %255, align 8
  %257 = mul nsw i32 %254, %256
  %258 = call i8* @calloc(i32 %257, i32 4)
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 59
  store i8* %258, i8** %259, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 17
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %261, %263
  %265 = call i8* @calloc(i32 %264, i32 4)
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 58
  store i8* %265, i8** %266, align 8
  br label %267

267:                                              ; preds = %234, %117
  %268 = load i32, i32* %23, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %307

270:                                              ; preds = %267
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %17, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %18, align 4
  %275 = mul nsw i32 %273, %274
  %276 = load i32, i32* %18, align 4
  %277 = mul nsw i32 %275, %276
  %278 = call i8* @calloc(i32 %277, i32 4)
  %279 = bitcast i8* %278 to i32*
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 23
  store i32* %279, i32** %280, align 8
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %17, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %18, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %18, align 4
  %287 = mul nsw i32 %285, %286
  %288 = call i8* @calloc(i32 %287, i32 4)
  %289 = bitcast i8* %288 to i32*
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 24
  store i32* %289, i32** %290, align 8
  %291 = load i32, i32* %17, align 4
  %292 = call i8* @calloc(i32 %291, i32 4)
  %293 = bitcast i8* %292 to i32*
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 25
  store i32* %293, i32** %294, align 8
  %295 = load i32, i32* %17, align 4
  %296 = call i8* @calloc(i32 %295, i32 4)
  %297 = bitcast i8* %296 to i32*
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 26
  store i32* %297, i32** %298, align 8
  %299 = load i32, i32* %17, align 4
  %300 = call i8* @calloc(i32 %299, i32 4)
  %301 = bitcast i8* %300 to i32*
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 27
  store i32* %301, i32** %302, align 8
  %303 = load i32, i32* %17, align 4
  %304 = call i8* @calloc(i32 %303, i32 4)
  %305 = bitcast i8* %304 to i32*
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 28
  store i32* %305, i32** %306, align 8
  br label %307

307:                                              ; preds = %270, %267
  %308 = load i32, i32* %21, align 4
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 30
  store i32 %308, i32* %309, align 4
  %310 = call i32 @get_workspace_size(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0)
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 29
  store i32 %310, i32* %311, align 8
  %312 = load i32, i32* @stderr, align 4
  %313 = load i32, i32* %17, align 4
  %314 = load i32, i32* %18, align 4
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* %19, align 4
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* %16, align 4
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 15
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 14
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 16
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @fprintf(i32 %312, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %321, i32 %323, i32 %325)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local float @rand_normal(...) #2

declare dso_local i32 @scal_cpu(i32, float, float*, i32) #2

declare dso_local i32 @get_workspace_size(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
