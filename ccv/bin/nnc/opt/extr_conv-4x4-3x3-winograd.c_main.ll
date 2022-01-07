; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-4x4-3x3-winograd.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-4x4-3x3-winograd.c_main.c"
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
@.str.1 = private unnamed_addr constant [20 x i8] c"%u ms for winograd\0A\00", align 1
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
  %29 = call { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32 1, i32 %27, i32 3, i32 3, i32 %28)
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
  %53 = load i32, i32* @OUTPUT_DIM, align 4
  %54 = load i32, i32* @INPUT_DIM, align 4
  %55 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %53, i32 3, i32 3, i32 %54)
  %56 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %55, i32 0)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %10, align 8
  %57 = load i32, i32* @OUTPUT_DIM, align 4
  %58 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %57)
  %59 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %58, i32 0)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %11, align 8
  %60 = call i32 @dsfmt_init_gen_rand(i32* %12, i32 0)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %81, %2
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @INPUT_DIM, align 4
  %64 = mul nsw i32 %63, 3
  %65 = mul nsw i32 %64, 3
  %66 = load i32, i32* @OUTPUT_DIM, align 4
  %67 = mul nsw i32 %65, %66
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %71 = load i32, i32* @INPUT_DIM, align 4
  %72 = mul nsw i32 9, %71
  %73 = sdiv i32 %70, %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %61

84:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @INPUT_SIZE, align 4
  %88 = load i32, i32* @INPUT_SIZE, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @INPUT_DIM, align 4
  %91 = mul nsw i32 %89, %90
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %85

105:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @OUTPUT_DIM, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = sitofp i32 %111 to float
  %113 = load i32, i32* @OUTPUT_DIM, align 4
  %114 = sitofp i32 %113 to float
  %115 = fdiv float %112, %114
  %116 = fptosi float %115 to i32
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %106

127:                                              ; preds = %106
  %128 = call i32 (...) @get_current_time()
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %133 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %130, %struct.TYPE_10__* %131, %struct.TYPE_10__* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %134)
  %136 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ccv_nnc_cmd_exec(i64 %138, i64 %140, i32 %129, i32 0, i32 %133, i32 %135, i32 0)
  %142 = call i32 (...) @get_current_time()
  %143 = load i32, i32* %14, align 4
  %144 = sub i32 %142, %143
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @OUTPUT_SIZE, align 4
  %148 = load i32, i32* @OUTPUT_SIZE, align 4
  %149 = load i32, i32* @OUTPUT_DIM, align 4
  %150 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %147, i32 %148, i32 %149)
  %151 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %150, i32 0)
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %15, align 8
  %152 = load i8*, i8** @CCV_NNC_BACKEND_CPU_OPT, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 2, i32* %160, align 8
  %161 = call i32 (...) @get_current_time()
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %166 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %163, %struct.TYPE_10__* %164, %struct.TYPE_10__* %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %168 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %167)
  %169 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %169, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @ccv_nnc_cmd_exec(i64 %171, i64 %173, i32 %162, i32 0, i32 %166, i32 %168, i32 0)
  %175 = call i32 (...) @get_current_time()
  %176 = load i32, i32* %14, align 4
  %177 = sub i32 %175, %176
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %230, %127
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @OUTPUT_DIM, align 4
  %183 = load i32, i32* @OUTPUT_SIZE, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* @OUTPUT_SIZE, align 4
  %186 = mul nsw i32 %184, %185
  %187 = icmp slt i32 %181, %186
  br i1 %187, label %188, label %233

188:                                              ; preds = %180
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %196, %204
  %206 = sitofp i32 %205 to float
  %207 = call i32 @fabs(float %206)
  %208 = sitofp i32 %207 to double
  %209 = fcmp ogt double %208, 1.000000e-05
  br i1 %209, label %210, label %229

210:                                              ; preds = %188
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %211, i32 %219, i32 %227)
  br label %229

229:                                              ; preds = %210, %188
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %180

233:                                              ; preds = %180
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %235 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %234)
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %237 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %236)
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %239 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %241 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %240)
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %243 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %242)
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_10__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local { i64, i64 } @CMD_CONVOLUTION_FORWARD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_hint_auto(i32, i32, i32) #1

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
