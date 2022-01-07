; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-gemm.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-gemm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i32 }

@INPUT_SIZE = common dso_local global i32 0, align 4
@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_SIZE = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@CCV_NNC_BACKEND_CPU_OPT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%u ms for optimized\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%u ms for gemm\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = call i32 (...) @ccv_nnc_init()
  %17 = load i32, i32* @INPUT_SIZE, align 4
  %18 = load i32, i32* @INPUT_SIZE, align 4
  %19 = load i32, i32* @INPUT_DIM, align 4
  %20 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %17, i32 %18, i32 %19)
  %21 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %20, i32 0)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load i32, i32* @OUTPUT_SIZE, align 4
  %23 = load i32, i32* @OUTPUT_SIZE, align 4
  %24 = load i32, i32* @OUTPUT_DIM, align 4
  %25 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %22, i32 %23, i32 %24)
  %26 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %25, i32 0)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %7, align 8
  %27 = load i32, i32* @OUTPUT_DIM, align 4
  %28 = load i32, i32* @INPUT_DIM, align 4
  %29 = call { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32 1, i32 %27, i32 1, i32 1, i32 %28)
  %30 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = load i8*, i8** @CCV_NNC_BACKEND_CPU_OPT, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ccv_nnc_hint_auto(i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ccv_nnc_hint_verify(i32 %53, i32 %55, i32 %58, i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @OUTPUT_DIM, align 4
  %67 = load i32, i32* @INPUT_DIM, align 4
  %68 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %66, i32 1, i32 1, i32 %67)
  %69 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %68, i32 0)
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %10, align 8
  %70 = load i32, i32* @OUTPUT_DIM, align 4
  %71 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %70)
  %72 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %71, i32 0)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %11, align 8
  %73 = call i32 @dsfmt_init_gen_rand(i32* %12, i32 0)
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %95, %2
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @INPUT_DIM, align 4
  %77 = mul nsw i32 %76, 1
  %78 = mul nsw i32 %77, 1
  %79 = load i32, i32* @OUTPUT_DIM, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %84 = load i32, i32* @INPUT_DIM, align 4
  %85 = mul nsw i32 %84, 1
  %86 = mul nsw i32 %85, 1
  %87 = sdiv i32 %83, %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %87, i32* %94, align 4
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %74

98:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @INPUT_SIZE, align 4
  %102 = load i32, i32* @INPUT_SIZE, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* @INPUT_DIM, align 4
  %105 = mul nsw i32 %103, %104
  %106 = icmp slt i32 %100, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %108, i32* %115, align 4
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %99

119:                                              ; preds = %99
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @OUTPUT_DIM, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = sitofp i32 %125 to float
  %127 = load i32, i32* @OUTPUT_DIM, align 4
  %128 = sitofp i32 %127 to float
  %129 = fdiv float %126, %128
  %130 = fptosi float %129 to i32
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %120

141:                                              ; preds = %120
  %142 = call i32 (...) @get_current_time()
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %144, %struct.TYPE_10__* %145, %struct.TYPE_10__* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %148)
  %150 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @ccv_nnc_cmd_exec(i64 %152, i64 %154, i32 %143, i32 0, i32 %147, i32 %149, i32 0)
  %156 = call i32 (...) @get_current_time()
  %157 = load i32, i32* %14, align 4
  %158 = sub i32 %156, %157
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @OUTPUT_SIZE, align 4
  %162 = load i32, i32* @OUTPUT_SIZE, align 4
  %163 = load i32, i32* @OUTPUT_DIM, align 4
  %164 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %161, i32 %162, i32 %163)
  %165 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %164, i32 0)
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %15, align 8
  %166 = load i8*, i8** @CCV_NNC_BACKEND_CPU_OPT, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 1, i32* %174, align 8
  %175 = call i32 (...) @get_current_time()
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %180 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %177, %struct.TYPE_10__* %178, %struct.TYPE_10__* %179)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %182 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %181)
  %183 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %184 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %183, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @ccv_nnc_cmd_exec(i64 %185, i64 %187, i32 %176, i32 0, i32 %180, i32 %182, i32 0)
  %189 = call i32 (...) @get_current_time()
  %190 = load i32, i32* %14, align 4
  %191 = sub i32 %189, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %244, %141
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @OUTPUT_DIM, align 4
  %197 = load i32, i32* @OUTPUT_SIZE, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* @OUTPUT_SIZE, align 4
  %200 = mul nsw i32 %198, %199
  %201 = icmp slt i32 %195, %200
  br i1 %201, label %202, label %247

202:                                              ; preds = %194
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %210, %218
  %220 = sitofp i32 %219 to float
  %221 = call i32 @fabs(float %220)
  %222 = sitofp i32 %221 to double
  %223 = fcmp ogt double %222, 1.000000e-05
  br i1 %223, label %224, label %243

224:                                              ; preds = %202
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %233, i32 %241)
  br label %243

243:                                              ; preds = %224, %202
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %194

247:                                              ; preds = %194
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %249 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %248)
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %251 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %250)
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %253 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %252)
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %255 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %257 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %256)
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_10__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_hint_auto(i32, i32, i32) #1

declare dso_local i64 @ccv_nnc_hint_verify(i32, i32, i32, i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local i32 @ccv_nnc_cmd_exec(i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TENSOR_LIST(%struct.TYPE_10__*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @fabs(float) #1

declare dso_local i32 @ccv_nnc_tensor_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
