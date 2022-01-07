; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_auto-tune-gemm.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_auto-tune-gemm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@CCV_NNC_GEMM_FORWARD = common dso_local global i32 0, align 4
@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"forw %u ms for ref\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"forw %u ms for auto-tuned, backend %d, algorithm %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"forw output[%d]: %f %f\0A\00", align 1
@CCV_NNC_GEMM_BACKWARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"back %u ms for ref\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"back %u ms for auto-tuned, backend %d, algorithm %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"back bias[%d]: %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"back dw[%d]: %f %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"back h[%d]: %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_13__, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_13__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = call i32 (...) @ccv_nnc_init()
  %24 = load i32, i32* @INPUT_DIM, align 4
  %25 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %24)
  %26 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %25, i32 0)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %6, align 8
  %27 = load i32, i32* @OUTPUT_DIM, align 4
  %28 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %27)
  %29 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %28, i32 0)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load i32, i32* @CCV_NNC_GEMM_FORWARD, align 4
  %31 = load i32, i32* @OUTPUT_DIM, align 4
  %32 = call i32 @CMD_GEMM(i32 %31)
  %33 = call i64 @ccv_nnc_cmd(i32 %30, i32 0, i32 %32, i32 0)
  %34 = bitcast %struct.TYPE_13__* %8 to i64*
  store i64 %33, i64* %34, align 4
  %35 = load i32, i32* @OUTPUT_DIM, align 4
  %36 = load i32, i32* @INPUT_DIM, align 4
  %37 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %35, i32 %36)
  %38 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %37, i32 0)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %9, align 8
  %39 = load i32, i32* @OUTPUT_DIM, align 4
  %40 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %39)
  %41 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %40, i32 0)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %10, align 8
  %42 = call i32 @dsfmt_init_gen_rand(i32* %11, i32 0)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %60, %2
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @INPUT_DIM, align 4
  %46 = load i32, i32* @OUTPUT_DIM, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = call i32 @dsfmt_genrand_open_close(i32* %11)
  %51 = load i32, i32* @INPUT_DIM, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %43

63:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @INPUT_DIM, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = call i32 @dsfmt_genrand_open_close(i32* %11)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %69, i32* %76, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %64

80:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @OUTPUT_DIM, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = sitofp i32 %86 to float
  %88 = load i32, i32* @OUTPUT_DIM, align 4
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %87, %89
  %91 = fptosi float %90 to i32
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %81

102:                                              ; preds = %81
  %103 = call i32 (...) @get_current_time()
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* @ccv_nnc_no_hint, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %105, %struct.TYPE_12__* %106, %struct.TYPE_12__* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %109)
  %111 = bitcast %struct.TYPE_13__* %8 to i64*
  %112 = load i64, i64* %111, align 4
  %113 = call i32 @ccv_nnc_cmd_exec(i64 %112, i32 %104, i32 0, i32 %108, i32 %110, i32 0)
  %114 = call i32 (...) @get_current_time()
  %115 = load i32, i32* %13, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @OUTPUT_DIM, align 4
  %120 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %119)
  %121 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %120, i32 0)
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %14, align 8
  %122 = load i32, i32* @ccv_nnc_no_hint, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %123, %struct.TYPE_12__* %124, %struct.TYPE_12__* %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %128 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %127)
  %129 = bitcast %struct.TYPE_13__* %8 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i64 @ccv_nnc_cmd_autotune(i64 %130, i32 0, i32 %122, i32 0, i32 %126, i32 %128, i32 0)
  %132 = bitcast %struct.TYPE_13__* %15 to i64*
  store i64 %131, i64* %132, align 4
  %133 = call i32 (...) @get_current_time()
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* @ccv_nnc_no_hint, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %135, %struct.TYPE_12__* %136, %struct.TYPE_12__* %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %140 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %139)
  %141 = bitcast %struct.TYPE_13__* %15 to i64*
  %142 = load i64, i64* %141, align 4
  %143 = call i32 @ccv_nnc_cmd_exec(i64 %142, i32 %134, i32 0, i32 %138, i32 %140, i32 0)
  %144 = call i32 (...) @get_current_time()
  %145 = load i32, i32* %13, align 4
  %146 = sub i32 %144, %145
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %149, i32 %151)
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %198, %102
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @OUTPUT_DIM, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %201

157:                                              ; preds = %153
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %165, %173
  %175 = call i32 @fabs(i32 %174)
  %176 = sitofp i32 %175 to double
  %177 = fcmp ogt double %176, 1.000000e-05
  br i1 %177, label %178, label %197

178:                                              ; preds = %157
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %187, i32 %195)
  br label %197

197:                                              ; preds = %178, %157
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %153

201:                                              ; preds = %153
  %202 = load i32, i32* @OUTPUT_DIM, align 4
  %203 = load i32, i32* @INPUT_DIM, align 4
  %204 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %202, i32 %203)
  %205 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %204, i32 0)
  store %struct.TYPE_12__* %205, %struct.TYPE_12__** %16, align 8
  %206 = load i32, i32* @INPUT_DIM, align 4
  %207 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %206)
  %208 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %207, i32 0)
  store %struct.TYPE_12__* %208, %struct.TYPE_12__** %17, align 8
  %209 = load i32, i32* @CCV_NNC_GEMM_BACKWARD, align 4
  %210 = load i32, i32* @OUTPUT_DIM, align 4
  %211 = call i32 @CMD_GEMM(i32 %210)
  %212 = call i64 @ccv_nnc_cmd(i32 %209, i32 0, i32 %211, i32 0)
  %213 = bitcast %struct.TYPE_13__* %18 to i64*
  store i64 %212, i64* %213, align 4
  %214 = call i32 (...) @get_current_time()
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* @ccv_nnc_no_hint, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %219 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %216, %struct.TYPE_12__* %217, %struct.TYPE_12__* %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %223 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %220, %struct.TYPE_12__* %221, %struct.TYPE_12__* %222)
  %224 = bitcast %struct.TYPE_13__* %18 to i64*
  %225 = load i64, i64* %224, align 4
  %226 = call i32 @ccv_nnc_cmd_exec(i64 %225, i32 %215, i32 0, i32 %219, i32 %223, i32 0)
  %227 = call i32 (...) @get_current_time()
  %228 = load i32, i32* %13, align 4
  %229 = sub i32 %227, %228
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @OUTPUT_DIM, align 4
  %233 = load i32, i32* @INPUT_DIM, align 4
  %234 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %232, i32 %233)
  %235 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %234, i32 0)
  store %struct.TYPE_12__* %235, %struct.TYPE_12__** %19, align 8
  %236 = load i32, i32* @INPUT_DIM, align 4
  %237 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %236)
  %238 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %237, i32 0)
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %20, align 8
  %239 = load i32, i32* @OUTPUT_DIM, align 4
  %240 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %239)
  %241 = call %struct.TYPE_12__* @ccv_nnc_tensor_new(i32 0, i32 %240, i32 0)
  store %struct.TYPE_12__* %241, %struct.TYPE_12__** %21, align 8
  %242 = load i32, i32* @ccv_nnc_no_hint, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %246 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %243, %struct.TYPE_12__* %244, %struct.TYPE_12__* %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %250 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %247, %struct.TYPE_12__* %248, %struct.TYPE_12__* %249)
  %251 = bitcast %struct.TYPE_13__* %18 to i64*
  %252 = load i64, i64* %251, align 4
  %253 = call i64 @ccv_nnc_cmd_autotune(i64 %252, i32 0, i32 %242, i32 0, i32 %246, i32 %250, i32 0)
  %254 = bitcast %struct.TYPE_13__* %22 to i64*
  store i64 %253, i64* %254, align 4
  %255 = call i32 (...) @get_current_time()
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* @ccv_nnc_no_hint, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %260 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %257, %struct.TYPE_12__* %258, %struct.TYPE_12__* %259)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %264 = call i32 (%struct.TYPE_12__*, ...) @TENSOR_LIST(%struct.TYPE_12__* %261, %struct.TYPE_12__* %262, %struct.TYPE_12__* %263)
  %265 = bitcast %struct.TYPE_13__* %22 to i64*
  %266 = load i64, i64* %265, align 4
  %267 = call i32 @ccv_nnc_cmd_exec(i64 %266, i32 %256, i32 0, i32 %260, i32 %264, i32 0)
  %268 = call i32 (...) @get_current_time()
  %269 = load i32, i32* %13, align 4
  %270 = sub i32 %268, %269
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %271, i32 %273, i32 %275)
  store i32 0, i32* %12, align 4
  br label %277

277:                                              ; preds = %322, %201
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @OUTPUT_DIM, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %325

281:                                              ; preds = %277
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %289, %297
  %299 = call i32 @fabs(i32 %298)
  %300 = sitofp i32 %299 to double
  %301 = fcmp ogt double %300, 1.000000e-05
  br i1 %301, label %302, label %321

302:                                              ; preds = %281
  %303 = load i32, i32* %12, align 4
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %303, i32 %311, i32 %319)
  br label %321

321:                                              ; preds = %302, %281
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %277

325:                                              ; preds = %277
  store i32 0, i32* %12, align 4
  br label %326

326:                                              ; preds = %373, %325
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* @INPUT_DIM, align 4
  %329 = load i32, i32* @OUTPUT_DIM, align 4
  %330 = mul nsw i32 %328, %329
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %376

332:                                              ; preds = %326
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %340, %348
  %350 = call i32 @fabs(i32 %349)
  %351 = sitofp i32 %350 to double
  %352 = fcmp ogt double %351, 1.000000e-05
  br i1 %352, label %353, label %372

353:                                              ; preds = %332
  %354 = load i32, i32* %12, align 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %12, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %354, i32 %362, i32 %370)
  br label %372

372:                                              ; preds = %353, %332
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %12, align 4
  br label %326

376:                                              ; preds = %326
  store i32 0, i32* %12, align 4
  br label %377

377:                                              ; preds = %422, %376
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* @INPUT_DIM, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %425

381:                                              ; preds = %377
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %389, %397
  %399 = call i32 @fabs(i32 %398)
  %400 = sitofp i32 %399 to double
  %401 = fcmp ogt double %400, 1.000000e-05
  br i1 %401, label %402, label %421

402:                                              ; preds = %381
  %403 = load i32, i32* %12, align 4
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %12, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %403, i32 %411, i32 %419)
  br label %421

421:                                              ; preds = %402, %381
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %12, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %12, align 4
  br label %377

425:                                              ; preds = %377
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %427 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %426)
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %429 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %428)
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %431 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %430)
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %433 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %432)
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %435 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %434)
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %437 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %436)
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %439 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %438)
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %441 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %440)
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %443 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %442)
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %445 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_12__* %444)
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_12__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local i64 @ccv_nnc_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @CMD_GEMM(i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local i32 @ccv_nnc_cmd_exec(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TENSOR_LIST(%struct.TYPE_12__*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @ccv_nnc_cmd_autotune(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @ccv_nnc_tensor_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
