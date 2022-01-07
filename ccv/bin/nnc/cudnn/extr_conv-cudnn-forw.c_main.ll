; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/cudnn/extr_conv-cudnn-forw.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/cudnn/extr_conv-cudnn-forw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64, i32, i32 }

@BATCH_SIZE = common dso_local global i32 0, align 4
@INPUT_SIZE = common dso_local global i32 0, align 4
@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_SIZE = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@KERNEL_SIZE = common dso_local global i32 0, align 4
@CCV_NNC_BACKEND_CPU_REF = common dso_local global i64 0, align 8
@CCV_NNC_DATA_TRANSFER_FORWARD = common dso_local global i32 0, align 4
@ccv_nnc_cmd_auto = common dso_local global i32 0, align 4
@CCV_NNC_BACKEND_GPU_REF = common dso_local global i64 0, align 8
@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%u ms for ref\0A\00", align 1
@CCV_NNC_FORMAT_TRANSFORM_FORWARD = common dso_local global i32 0, align 4
@CCV_NNC_BACKEND_GPU_CUDNN = common dso_local global i8* null, align 8
@CCV_STREAM_CONTEXT_GPU = common dso_local global i32 0, align 4
@CCV_NNC_EXEC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%u ms for optimized\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_14__, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = call i32 (...) @ccv_nnc_init()
  %26 = load i32, i32* @BATCH_SIZE, align 4
  %27 = load i32, i32* @INPUT_SIZE, align 4
  %28 = load i32, i32* @INPUT_SIZE, align 4
  %29 = load i32, i32* @INPUT_DIM, align 4
  %30 = call i32 (i32, ...) @CPU_TENSOR_NHWC(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %30, i32 0)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %6, align 8
  %32 = load i32, i32* @BATCH_SIZE, align 4
  %33 = load i32, i32* @OUTPUT_SIZE, align 4
  %34 = load i32, i32* @OUTPUT_SIZE, align 4
  %35 = load i32, i32* @OUTPUT_DIM, align 4
  %36 = call i32 (i32, ...) @CPU_TENSOR_NHWC(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %36, i32 0)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %7, align 8
  %38 = load i32, i32* @OUTPUT_DIM, align 4
  %39 = load i32, i32* @KERNEL_SIZE, align 4
  %40 = load i32, i32* @KERNEL_SIZE, align 4
  %41 = load i32, i32* @INPUT_DIM, align 4
  %42 = call { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32 1, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = bitcast %struct.TYPE_14__* %8 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = extractvalue { i64, i64 } %42, 0
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = extractvalue { i64, i64 } %42, 1
  store i64 %47, i64* %46, align 8
  %48 = load i64, i64* @CCV_NNC_BACKEND_CPU_REF, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ccv_nnc_hint_auto(i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ccv_nnc_hint_verify(i32 %64, i32 %66, i32 %69, i32 %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* @OUTPUT_DIM, align 4
  %78 = load i32, i32* @KERNEL_SIZE, align 4
  %79 = load i32, i32* @KERNEL_SIZE, align 4
  %80 = load i32, i32* @INPUT_DIM, align 4
  %81 = call i32 (i32, ...) @CPU_TENSOR_NHWC(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %81, i32 0)
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %10, align 8
  %83 = load i32, i32* @OUTPUT_DIM, align 4
  %84 = call i32 (i32, ...) @CPU_TENSOR_NHWC(i32 %83)
  %85 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %84, i32 0)
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %11, align 8
  %86 = call i32 @dsfmt_init_gen_rand(i32* %12, i32 0)
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %112, %2
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @INPUT_DIM, align 4
  %90 = load i32, i32* @KERNEL_SIZE, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* @KERNEL_SIZE, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* @OUTPUT_DIM, align 4
  %95 = mul nsw i32 %93, %94
  %96 = icmp slt i32 %88, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %87
  %98 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %99 = load i32, i32* @INPUT_DIM, align 4
  %100 = load i32, i32* @KERNEL_SIZE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* @KERNEL_SIZE, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sdiv i32 %98, %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %87

115:                                              ; preds = %87
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %136, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @INPUT_SIZE, align 4
  %119 = load i32, i32* @INPUT_SIZE, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* @INPUT_DIM, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* @BATCH_SIZE, align 4
  %124 = call i32 @ccv_max(i32 1, i32 %123)
  %125 = mul nsw i32 %122, %124
  %126 = icmp slt i32 %117, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %116
  %128 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %128, i32* %135, align 4
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %116

139:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @OUTPUT_DIM, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load i32, i32* %13, align 4
  %146 = sitofp i32 %145 to float
  %147 = load i32, i32* @OUTPUT_DIM, align 4
  %148 = sitofp i32 %147 to float
  %149 = fdiv float %146, %148
  %150 = fptosi float %149 to i32
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %150, i32* %157, align 4
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load i32, i32* @BATCH_SIZE, align 4
  %163 = load i32, i32* @INPUT_SIZE, align 4
  %164 = load i32, i32* @INPUT_SIZE, align 4
  %165 = load i32, i32* @INPUT_DIM, align 4
  %166 = call i32 (i32, i32, ...) @GPU_TENSOR_NHWC(i32 0, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %166, i32 0)
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %14, align 8
  %168 = load i32, i32* @OUTPUT_DIM, align 4
  %169 = load i32, i32* @KERNEL_SIZE, align 4
  %170 = load i32, i32* @KERNEL_SIZE, align 4
  %171 = load i32, i32* @INPUT_DIM, align 4
  %172 = call i32 (i32, i32, ...) @GPU_TENSOR_NHWC(i32 0, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %172, i32 0)
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %15, align 8
  %174 = load i32, i32* @OUTPUT_DIM, align 4
  %175 = load i32, i32* @INPUT_DIM, align 4
  %176 = load i32, i32* @KERNEL_SIZE, align 4
  %177 = load i32, i32* @KERNEL_SIZE, align 4
  %178 = call i32 @GPU_TENSOR_NCHW(i32 0, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %178, i32 0)
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %16, align 8
  %180 = load i32, i32* @OUTPUT_DIM, align 4
  %181 = call i32 (i32, i32, ...) @GPU_TENSOR_NHWC(i32 0, i32 %180)
  %182 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %181, i32 0)
  store %struct.TYPE_13__* %182, %struct.TYPE_13__** %17, align 8
  %183 = call i32 (...) @get_current_time()
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* @CCV_NNC_DATA_TRANSFER_FORWARD, align 4
  %185 = load i32, i32* @ccv_nnc_cmd_auto, align 4
  %186 = call { i64, i64 } @ccv_nnc_cmd(i32 %184, i32 0, i32 %185, i32 0)
  %187 = bitcast %struct.TYPE_14__* %19 to { i64, i64 }*
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 0
  %189 = extractvalue { i64, i64 } %186, 0
  store i64 %189, i64* %188, align 8
  %190 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %187, i32 0, i32 1
  %191 = extractvalue { i64, i64 } %186, 1
  store i64 %191, i64* %190, align 8
  %192 = load i64, i64* @CCV_NNC_BACKEND_GPU_REF, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i32, i32* @ccv_nnc_no_hint, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %203 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %200, %struct.TYPE_13__* %201, %struct.TYPE_13__* %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %207 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %204, %struct.TYPE_13__* %205, %struct.TYPE_13__* %206)
  %208 = bitcast %struct.TYPE_14__* %19 to { i64, i64 }*
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @ccv_nnc_cmd_exec(i64 %210, i64 %212, i32 %199, i32 0, i32 %203, i32 %207, i32* null)
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %218 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %215, %struct.TYPE_13__* %216, %struct.TYPE_13__* %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %219)
  %221 = bitcast %struct.TYPE_14__* %8 to { i64, i64 }*
  %222 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @ccv_nnc_cmd_exec(i64 %223, i64 %225, i32 %214, i32 0, i32 %218, i32 %220, i32* null)
  %227 = call i32 (...) @get_current_time()
  %228 = load i32, i32* %18, align 4
  %229 = sub i32 %227, %228
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @BATCH_SIZE, align 4
  %233 = load i32, i32* @OUTPUT_SIZE, align 4
  %234 = load i32, i32* @OUTPUT_SIZE, align 4
  %235 = load i32, i32* @OUTPUT_DIM, align 4
  %236 = call i32 (i32, i32, ...) @GPU_TENSOR_NHWC(i32 0, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %236, i32 0)
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %20, align 8
  %238 = load i32, i32* @CCV_NNC_FORMAT_TRANSFORM_FORWARD, align 4
  %239 = load i32, i32* @ccv_nnc_cmd_auto, align 4
  %240 = call { i64, i64 } @ccv_nnc_cmd(i32 %238, i32 0, i32 %239, i32 0)
  %241 = bitcast %struct.TYPE_14__* %21 to { i64, i64 }*
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %241, i32 0, i32 0
  %243 = extractvalue { i64, i64 } %240, 0
  store i64 %243, i64* %242, align 8
  %244 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %241, i32 0, i32 1
  %245 = extractvalue { i64, i64 } %240, 1
  store i64 %245, i64* %244, align 8
  %246 = load i8*, i8** @CCV_NNC_BACKEND_GPU_CUDNN, align 8
  %247 = ptrtoint i8* %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i64 %247, i64* %248, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp sge i64 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load i32, i32* @CCV_STREAM_CONTEXT_GPU, align 4
  %255 = call i32* @ccv_nnc_stream_context_new(i32 %254)
  store i32* %255, i32** %22, align 8
  %256 = load i32, i32* @ccv_nnc_no_hint, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %258 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %260 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %259)
  %261 = load i32*, i32** %22, align 8
  %262 = bitcast %struct.TYPE_14__* %21 to { i64, i64 }*
  %263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %262, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @ccv_nnc_cmd_exec(i64 %264, i64 %266, i32 %256, i32 0, i32 %258, i32 %260, i32* %261)
  %268 = load i32*, i32** %22, align 8
  %269 = call i32 @ccv_nnc_stream_context_wait(i32* %268)
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %271 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %270)
  %272 = load i8*, i8** @CCV_NNC_BACKEND_GPU_CUDNN, align 8
  %273 = ptrtoint i8* %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i64 %273, i64* %274, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp sge i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 -1, i32* %280, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %285 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %282, %struct.TYPE_13__* %283, %struct.TYPE_13__* %284)
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %287 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %286)
  %288 = load i32*, i32** %22, align 8
  %289 = bitcast %struct.TYPE_14__* %8 to { i64, i64 }*
  %290 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %289, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = call { i64, i64 } @ccv_nnc_cmd_autotune(i64 %291, i64 %293, i32 1073741824, i32 %281, i32 0, i32 %285, i32 %287, i32* %288)
  %295 = bitcast %struct.TYPE_14__* %23 to { i64, i64 }*
  %296 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 0
  %297 = extractvalue { i64, i64 } %294, 0
  store i64 %297, i64* %296, align 8
  %298 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %295, i32 0, i32 1
  %299 = extractvalue { i64, i64 } %294, 1
  store i64 %299, i64* %298, align 8
  %300 = bitcast %struct.TYPE_14__* %8 to i8*
  %301 = bitcast %struct.TYPE_14__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %300, i8* align 8 %301, i64 16, i1 false)
  %302 = call i32 (...) @get_current_time()
  store i32 %302, i32* %18, align 4
  %303 = load i64, i64* @CCV_NNC_EXEC_SUCCESS, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %308 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %305, %struct.TYPE_13__* %306, %struct.TYPE_13__* %307)
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %310 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %309)
  %311 = load i32*, i32** %22, align 8
  %312 = bitcast %struct.TYPE_14__* %8 to { i64, i64 }*
  %313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %312, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @ccv_nnc_cmd_exec(i64 %314, i64 %316, i32 %304, i32 0, i32 %308, i32 %310, i32* %311)
  %318 = icmp eq i64 %303, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = load i32*, i32** %22, align 8
  %322 = call i32 @ccv_nnc_stream_context_wait(i32* %321)
  %323 = load i32*, i32** %22, align 8
  %324 = call i32 @ccv_nnc_stream_context_free(i32* %323)
  %325 = call i32 (...) @get_current_time()
  %326 = load i32, i32* %18, align 4
  %327 = sub i32 %325, %326
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* %18, align 4
  %329 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* @BATCH_SIZE, align 4
  %331 = load i32, i32* @OUTPUT_SIZE, align 4
  %332 = load i32, i32* @OUTPUT_SIZE, align 4
  %333 = load i32, i32* @OUTPUT_DIM, align 4
  %334 = call i32 (i32, ...) @CPU_TENSOR_NHWC(i32 %330, i32 %331, i32 %332, i32 %333)
  %335 = call %struct.TYPE_13__* @ccv_nnc_tensor_new(i32 0, i32 %334, i32 0)
  store %struct.TYPE_13__* %335, %struct.TYPE_13__** %24, align 8
  %336 = load i32, i32* @ccv_nnc_no_hint, align 4
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %338 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %337)
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %340 = call i32 (%struct.TYPE_13__*, ...) @TENSOR_LIST(%struct.TYPE_13__* %339)
  %341 = bitcast %struct.TYPE_14__* %19 to { i64, i64 }*
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %341, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = call i64 @ccv_nnc_cmd_exec(i64 %343, i64 %345, i32 %336, i32 0, i32 %338, i32 %340, i32* null)
  store i32 0, i32* %13, align 4
  br label %347

347:                                              ; preds = %397, %161
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* @OUTPUT_DIM, align 4
  %350 = load i32, i32* @OUTPUT_SIZE, align 4
  %351 = mul nsw i32 %349, %350
  %352 = load i32, i32* @OUTPUT_SIZE, align 4
  %353 = mul nsw i32 %351, %352
  %354 = icmp slt i32 %348, %353
  br i1 %354, label %355, label %400

355:                                              ; preds = %347
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %13, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = sub nsw i32 %363, %371
  %373 = sitofp i32 %372 to double
  %374 = call i32 @fabs(double %373)
  %375 = sitofp i32 %374 to double
  %376 = fcmp ogt double %375, 1.000000e-05
  br i1 %376, label %377, label %396

377:                                              ; preds = %355
  %378 = load i32, i32* %13, align 4
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %13, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %378, i32 %386, i32 %394)
  br label %396

396:                                              ; preds = %377, %355
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %13, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %13, align 4
  br label %347

400:                                              ; preds = %347
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %402 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %401)
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %404 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %403)
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %406 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %405)
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %408 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %407)
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %410 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %409)
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %412 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %411)
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %414 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %413)
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %416 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %415)
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %418 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_13__* %417)
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_13__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @CPU_TENSOR_NHWC(i32, ...) #1

declare dso_local { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_hint_auto(i32, i32, i32) #1

declare dso_local i64 @ccv_nnc_hint_verify(i32, i32, i32, i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @GPU_TENSOR_NHWC(i32, i32, ...) #1

declare dso_local i32 @GPU_TENSOR_NCHW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local { i64, i64 } @ccv_nnc_cmd(i32, i32, i32, i32) #1

declare dso_local i64 @ccv_nnc_cmd_exec(i64, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @TENSOR_LIST(%struct.TYPE_13__*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32* @ccv_nnc_stream_context_new(i32) #1

declare dso_local i32 @ccv_nnc_stream_context_wait(i32*) #1

declare dso_local i32 @ccv_nnc_tensor_free(%struct.TYPE_13__*) #1

declare dso_local { i64, i64 } @ccv_nnc_cmd_autotune(i64, i64, i32, i32, i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_nnc_stream_context_free(i32*) #1

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
