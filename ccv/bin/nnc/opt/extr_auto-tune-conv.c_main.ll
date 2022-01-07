; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_auto-tune-conv.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_auto-tune-conv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@INPUT_SIZE = common dso_local global i32 0, align 4
@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_SIZE = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@KERNEL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%u ms for ref\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%u ms for auto-tuned, backend %d, algorithm %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_13__, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca { i64, i32 }, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = call i32 (...) @ccv_nnc_init()
  %23 = load i32, i32* @INPUT_SIZE, align 4
  %24 = load i32, i32* @INPUT_SIZE, align 4
  %25 = load i32, i32* @INPUT_DIM, align 4
  %26 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %23, i32 %24, i32 %25)
  %27 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %26, i32 0)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %6, align 8
  %28 = load i32, i32* @OUTPUT_SIZE, align 4
  %29 = load i32, i32* @OUTPUT_SIZE, align 4
  %30 = load i32, i32* @OUTPUT_DIM, align 4
  %31 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %28, i32 %29, i32 %30)
  %32 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %31, i32 0)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  %33 = load i32, i32* @OUTPUT_DIM, align 4
  %34 = load i32, i32* @KERNEL_SIZE, align 4
  %35 = load i32, i32* @KERNEL_SIZE, align 4
  %36 = load i32, i32* @INPUT_DIM, align 4
  %37 = call { i64, i32 } @CMD_CONVOLUTION_FORWARD(i32 1, i32 %33, i32 %34, i32 %35, i32 %36)
  store { i64, i32 } %37, { i64, i32 }* %9, align 8
  %38 = bitcast { i64, i32 }* %9 to i8*
  %39 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %38, i64 12, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ccv_nnc_hint_auto(i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ccv_nnc_hint_verify(i32 %49, i32 %51, i32 %54, i32 %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* @OUTPUT_DIM, align 4
  %63 = load i32, i32* @KERNEL_SIZE, align 4
  %64 = load i32, i32* @KERNEL_SIZE, align 4
  %65 = load i32, i32* @INPUT_DIM, align 4
  %66 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %66, i32 0)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %11, align 8
  %68 = load i32, i32* @OUTPUT_DIM, align 4
  %69 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %68)
  %70 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %69, i32 0)
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %12, align 8
  %71 = call i32 @dsfmt_init_gen_rand(i32* %13, i32 0)
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %97, %2
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @INPUT_DIM, align 4
  %75 = load i32, i32* @KERNEL_SIZE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* @KERNEL_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @OUTPUT_DIM, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %73, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %72
  %83 = call i32 @dsfmt_genrand_open_close(i32* %13)
  %84 = load i32, i32* @INPUT_DIM, align 4
  %85 = load i32, i32* @KERNEL_SIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* @KERNEL_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sdiv i32 %83, %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %72

100:                                              ; preds = %72
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %118, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @INPUT_SIZE, align 4
  %104 = load i32, i32* @INPUT_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* @INPUT_DIM, align 4
  %107 = mul nsw i32 %105, %106
  %108 = icmp slt i32 %102, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = call i32 @dsfmt_genrand_open_close(i32* %13)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %101

121:                                              ; preds = %101
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %140, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @OUTPUT_DIM, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load i32, i32* %14, align 4
  %128 = sitofp i32 %127 to float
  %129 = load i32, i32* @OUTPUT_DIM, align 4
  %130 = sitofp i32 %129 to float
  %131 = fdiv float %128, %130
  %132 = fptosi float %131 to i32
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %132, i32* %139, align 4
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %122

143:                                              ; preds = %122
  %144 = call i32 (...) @get_current_time()
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %146, %struct.TYPE_12__* %147, %struct.TYPE_12__* %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %150)
  %152 = bitcast { i64, i32 }* %16 to i8*
  %153 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 12, i1 false)
  %154 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %155 = load i64, i64* %154, align 4
  %156 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ccv_nnc_cmd_exec(i64 %155, i32 %157, i32 %145, i32 0, i32 %149, i32 %151, i32 0)
  %159 = call i32 (...) @get_current_time()
  %160 = load i32, i32* %15, align 4
  %161 = sub i32 %159, %160
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @OUTPUT_SIZE, align 4
  %165 = load i32, i32* @OUTPUT_SIZE, align 4
  %166 = load i32, i32* @OUTPUT_DIM, align 4
  %167 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %164, i32 %165, i32 %166)
  %168 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %167, i32 0)
  store %struct.TYPE_12__* %168, %struct.TYPE_12__** %17, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %173 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %170, %struct.TYPE_12__* %171, %struct.TYPE_12__* %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %175 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %174)
  %176 = bitcast { i64, i32 }* %19 to i8*
  %177 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %179 = load i64, i64* %178, align 4
  %180 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call { i64, i32 } @ccv_nnc_cmd_autotune(i64 %179, i32 %181, i32 0, i32 %169, i32 0, i32 %173, i32 %175, i32 0)
  store { i64, i32 } %182, { i64, i32 }* %20, align 8
  %183 = bitcast { i64, i32 }* %20 to i8*
  %184 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 8 %183, i64 12, i1 false)
  %185 = call i32 (...) @get_current_time()
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %190 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %187, %struct.TYPE_12__* %188, %struct.TYPE_12__* %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %192 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %191)
  %193 = bitcast { i64, i32 }* %21 to i8*
  %194 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 %194, i64 12, i1 false)
  %195 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %196 = load i64, i64* %195, align 4
  %197 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ccv_nnc_cmd_exec(i64 %196, i32 %198, i32 %186, i32 0, i32 %190, i32 %192, i32 0)
  %200 = call i32 (...) @get_current_time()
  %201 = load i32, i32* %15, align 4
  %202 = sub i32 %200, %201
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %205, i32 %207)
  store i32 0, i32* %14, align 4
  br label %209

209:                                              ; preds = %259, %143
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @OUTPUT_DIM, align 4
  %212 = load i32, i32* @OUTPUT_SIZE, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* @OUTPUT_SIZE, align 4
  %215 = mul nsw i32 %213, %214
  %216 = icmp slt i32 %210, %215
  br i1 %216, label %217, label %262

217:                                              ; preds = %209
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %225, %233
  %235 = sitofp i32 %234 to float
  %236 = call i32 @fabs(float %235)
  %237 = sitofp i32 %236 to double
  %238 = fcmp ogt double %237, 1.000000e-05
  br i1 %238, label %239, label %258

239:                                              ; preds = %217
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %240, i32 %248, i32 %256)
  br label %258

258:                                              ; preds = %239, %217
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %209

262:                                              ; preds = %209
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %264 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %263)
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %266 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %265)
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %268 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %267)
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %270 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %272 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %271)
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_12__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local { i64, i32 } @CMD_CONVOLUTION_FORWARD(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_nnc_hint_auto(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_nnc_hint_verify(i32, i32, i32, i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local i32 @ccv_nnc_cmd_exec(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TENSOR_LIST(%struct.TYPE_12__*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local { i64, i32 } @ccv_nnc_cmd_autotune(i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fabs(float) #1

declare dso_local i32 @ccv_nnc_tensor_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
