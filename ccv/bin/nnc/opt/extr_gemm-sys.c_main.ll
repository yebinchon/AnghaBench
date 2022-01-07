; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_gemm-sys.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_gemm-sys.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32 }

@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@CCV_NNC_GEMM_FORWARD = common dso_local global i32 0, align 4
@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"forw %u ms for ref\0A\00", align 1
@CCV_NNC_BACKEND_CPU_OPT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"forw %u ms for optimized\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"forw output[%d]: %f %f\0A\00", align 1
@CCV_NNC_GEMM_BACKWARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"back %u ms for ref\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"back %u ms for optimized\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"back bias[%d]: %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"back dw[%d]: %f %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"back h[%d]: %f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = call i32 (...) @ccv_nnc_init()
  %22 = load i32, i32* @INPUT_DIM, align 4
  %23 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %22)
  %24 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %23, i32 0)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %6, align 8
  %25 = load i32, i32* @OUTPUT_DIM, align 4
  %26 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %25)
  %27 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %26, i32 0)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %7, align 8
  %28 = load i32, i32* @CCV_NNC_GEMM_FORWARD, align 4
  %29 = load i32, i32* @OUTPUT_DIM, align 4
  %30 = call i32 @CMD_GEMM(i32 %29)
  %31 = call { i64, i32 } @ccv_nnc_cmd(i32 %28, i32 0, i32 %30, i32 0)
  %32 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i32 } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i32 } %31, 1
  store i32 %36, i32* %35, align 8
  %37 = load i32, i32* @INPUT_DIM, align 4
  %38 = load i32, i32* @OUTPUT_DIM, align 4
  %39 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %37, i32 %38)
  %40 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %39, i32 0)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %9, align 8
  %41 = load i32, i32* @OUTPUT_DIM, align 4
  %42 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %41)
  %43 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %42, i32 0)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %10, align 8
  %44 = call i32 @dsfmt_init_gen_rand(i32* %11, i32 0)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %62, %2
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @INPUT_DIM, align 4
  %48 = load i32, i32* @OUTPUT_DIM, align 4
  %49 = mul nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = call i32 @dsfmt_genrand_open_close(i32* %11)
  %53 = load i32, i32* @INPUT_DIM, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %54, i32* %61, align 4
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %45

65:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %79, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @INPUT_DIM, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = call i32 @dsfmt_genrand_open_close(i32* %11)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %66

82:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @OUTPUT_DIM, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = sitofp i32 %88 to float
  %90 = load i32, i32* @OUTPUT_DIM, align 4
  %91 = sitofp i32 %90 to float
  %92 = fdiv float %89, %91
  %93 = fptosi float %92 to i32
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %83

104:                                              ; preds = %83
  %105 = call i32 (...) @get_current_time()
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @ccv_nnc_no_hint, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %107, %struct.TYPE_10__* %108, %struct.TYPE_10__* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %111)
  %113 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %113, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ccv_nnc_cmd_exec(i64 %115, i32 %117, i32 %106, i32 0, i32 %110, i32 %112, i32 0)
  %119 = call i32 (...) @get_current_time()
  %120 = load i32, i32* %13, align 4
  %121 = sub i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @OUTPUT_DIM, align 4
  %125 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %124)
  %126 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %125, i32 0)
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %14, align 8
  %127 = load i8*, i8** @CCV_NNC_BACKEND_CPU_OPT, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 1, i32* %135, align 8
  %136 = call i32 (...) @get_current_time()
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* @ccv_nnc_no_hint, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %141 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %138, %struct.TYPE_10__* %139, %struct.TYPE_10__* %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %143 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %142)
  %144 = bitcast %struct.TYPE_11__* %8 to { i64, i32 }*
  %145 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %144, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ccv_nnc_cmd_exec(i64 %146, i32 %148, i32 %137, i32 0, i32 %141, i32 %143, i32 0)
  %150 = call i32 (...) @get_current_time()
  %151 = load i32, i32* %13, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %201, %104
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @OUTPUT_DIM, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %204

159:                                              ; preds = %155
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %167, %175
  %177 = sitofp i32 %176 to double
  %178 = call i32 @fabs(double %177)
  %179 = sitofp i32 %178 to double
  %180 = fcmp ogt double %179, 1.000000e-05
  br i1 %180, label %181, label %200

181:                                              ; preds = %159
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %190, i32 %198)
  br label %200

200:                                              ; preds = %181, %159
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %155

204:                                              ; preds = %155
  %205 = load i32, i32* @INPUT_DIM, align 4
  %206 = load i32, i32* @OUTPUT_DIM, align 4
  %207 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %205, i32 %206)
  %208 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %207, i32 0)
  store %struct.TYPE_10__* %208, %struct.TYPE_10__** %15, align 8
  %209 = load i32, i32* @INPUT_DIM, align 4
  %210 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %209)
  %211 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %210, i32 0)
  store %struct.TYPE_10__* %211, %struct.TYPE_10__** %16, align 8
  %212 = load i32, i32* @CCV_NNC_GEMM_BACKWARD, align 4
  %213 = load i32, i32* @OUTPUT_DIM, align 4
  %214 = call i32 @CMD_GEMM(i32 %213)
  %215 = call { i64, i32 } @ccv_nnc_cmd(i32 %212, i32 0, i32 %214, i32 0)
  %216 = bitcast %struct.TYPE_11__* %17 to { i64, i32 }*
  %217 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %216, i32 0, i32 0
  %218 = extractvalue { i64, i32 } %215, 0
  store i64 %218, i64* %217, align 8
  %219 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %216, i32 0, i32 1
  %220 = extractvalue { i64, i32 } %215, 1
  store i32 %220, i32* %219, align 8
  %221 = call i32 (...) @get_current_time()
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* @ccv_nnc_no_hint, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %226 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %223, %struct.TYPE_10__* %224, %struct.TYPE_10__* %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %230 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %227, %struct.TYPE_10__* %228, %struct.TYPE_10__* %229)
  %231 = bitcast %struct.TYPE_11__* %17 to { i64, i32 }*
  %232 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %231, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @ccv_nnc_cmd_exec(i64 %233, i32 %235, i32 %222, i32 0, i32 %226, i32 %230, i32 0)
  %237 = call i32 (...) @get_current_time()
  %238 = load i32, i32* %13, align 4
  %239 = sub i32 %237, %238
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @INPUT_DIM, align 4
  %243 = load i32, i32* @OUTPUT_DIM, align 4
  %244 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %242, i32 %243)
  %245 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %244, i32 0)
  store %struct.TYPE_10__* %245, %struct.TYPE_10__** %18, align 8
  %246 = load i32, i32* @INPUT_DIM, align 4
  %247 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %246)
  %248 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %247, i32 0)
  store %struct.TYPE_10__* %248, %struct.TYPE_10__** %19, align 8
  %249 = load i32, i32* @OUTPUT_DIM, align 4
  %250 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %249)
  %251 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %250, i32 0)
  store %struct.TYPE_10__* %251, %struct.TYPE_10__** %20, align 8
  %252 = load i8*, i8** @CCV_NNC_BACKEND_CPU_OPT, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %253, i64* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp sge i64 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 1, i32* %260, align 8
  %261 = call i32 (...) @get_current_time()
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* @ccv_nnc_no_hint, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %266 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %263, %struct.TYPE_10__* %264, %struct.TYPE_10__* %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %270 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %267, %struct.TYPE_10__* %268, %struct.TYPE_10__* %269)
  %271 = bitcast %struct.TYPE_11__* %17 to { i64, i32 }*
  %272 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %271, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @ccv_nnc_cmd_exec(i64 %273, i32 %275, i32 %262, i32 0, i32 %266, i32 %270, i32 0)
  %277 = call i32 (...) @get_current_time()
  %278 = load i32, i32* %13, align 4
  %279 = sub i32 %277, %278
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %13, align 4
  %281 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %280)
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %328, %204
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @OUTPUT_DIM, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %331

286:                                              ; preds = %282
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %294, %302
  %304 = sitofp i32 %303 to double
  %305 = call i32 @fabs(double %304)
  %306 = sitofp i32 %305 to double
  %307 = fcmp ogt double %306, 1.000000e-05
  br i1 %307, label %308, label %327

308:                                              ; preds = %286
  %309 = load i32, i32* %12, align 4
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %309, i32 %317, i32 %325)
  br label %327

327:                                              ; preds = %308, %286
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %12, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %12, align 4
  br label %282

331:                                              ; preds = %282
  store i32 0, i32* %12, align 4
  br label %332

332:                                              ; preds = %380, %331
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @INPUT_DIM, align 4
  %335 = load i32, i32* @OUTPUT_DIM, align 4
  %336 = mul nsw i32 %334, %335
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %383

338:                                              ; preds = %332
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = sub nsw i32 %346, %354
  %356 = sitofp i32 %355 to double
  %357 = call i32 @fabs(double %356)
  %358 = sitofp i32 %357 to double
  %359 = fcmp ogt double %358, 1.000000e-05
  br i1 %359, label %360, label %379

360:                                              ; preds = %338
  %361 = load i32, i32* %12, align 4
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %12, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %361, i32 %369, i32 %377)
  br label %379

379:                                              ; preds = %360, %338
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %12, align 4
  br label %332

383:                                              ; preds = %332
  store i32 0, i32* %12, align 4
  br label %384

384:                                              ; preds = %430, %383
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* @INPUT_DIM, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %433

388:                                              ; preds = %384
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %12, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %12, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = sub nsw i32 %396, %404
  %406 = sitofp i32 %405 to double
  %407 = call i32 @fabs(double %406)
  %408 = sitofp i32 %407 to double
  %409 = fcmp ogt double %408, 1.000000e-05
  br i1 %409, label %410, label %429

410:                                              ; preds = %388
  %411 = load i32, i32* %12, align 4
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %12, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %12, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %411, i32 %419, i32 %427)
  br label %429

429:                                              ; preds = %410, %388
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %12, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %12, align 4
  br label %384

433:                                              ; preds = %384
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %435 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %434)
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %437 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %436)
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %439 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %438)
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %441 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %440)
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %443 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %442)
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %445 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %444)
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %447 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %446)
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %449 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %448)
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %451 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %450)
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %453 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %452)
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_10__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local { i64, i32 } @ccv_nnc_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @CMD_GEMM(i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local i32 @ccv_nnc_cmd_exec(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TENSOR_LIST(%struct.TYPE_10__*, ...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @ccv_nnc_tensor_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
