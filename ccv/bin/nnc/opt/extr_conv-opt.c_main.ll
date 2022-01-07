; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-opt.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/opt/extr_conv-opt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@INPUT_SIZE = common dso_local global i32 0, align 4
@INPUT_DIM = common dso_local global i32 0, align 4
@OUTPUT_SIZE = common dso_local global i32 0, align 4
@OUTPUT_DIM = common dso_local global i32 0, align 4
@KERNEL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%u ms for ref\0A\00", align 1
@CCV_NNC_BACKEND_CPU_OPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%u ms for optimized\0A\00", align 1
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
  %28 = load i32, i32* @KERNEL_SIZE, align 4
  %29 = load i32, i32* @KERNEL_SIZE, align 4
  %30 = load i32, i32* @INPUT_DIM, align 4
  call void @CMD_CONVOLUTION_FORWARD(%struct.TYPE_11__* sret %8, i32 1, i32 %27, i32 %28, i32 %29, i32 %30)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ccv_nnc_hint_auto(i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ccv_nnc_hint_verify(i32 %40, i32 %42, i32 %45, i32 %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @OUTPUT_DIM, align 4
  %54 = load i32, i32* @KERNEL_SIZE, align 4
  %55 = load i32, i32* @KERNEL_SIZE, align 4
  %56 = load i32, i32* @INPUT_DIM, align 4
  %57 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %57, i32 0)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %10, align 8
  %59 = load i32, i32* @OUTPUT_DIM, align 4
  %60 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %59)
  %61 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %60, i32 0)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %11, align 8
  %62 = call i32 @dsfmt_init_gen_rand(i32* %12, i32 0)
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %88, %2
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @INPUT_DIM, align 4
  %66 = load i32, i32* @KERNEL_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* @KERNEL_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* @OUTPUT_DIM, align 4
  %71 = mul nsw i32 %69, %70
  %72 = icmp slt i32 %64, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %63
  %74 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %75 = load i32, i32* @INPUT_DIM, align 4
  %76 = load i32, i32* @KERNEL_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @KERNEL_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %74, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %80, i32* %87, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %63

91:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %109, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @INPUT_SIZE, align 4
  %95 = load i32, i32* @INPUT_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* @INPUT_DIM, align 4
  %98 = mul nsw i32 %96, %97
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = call i32 @dsfmt_genrand_open_close(i32* %12)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %101, i32* %108, align 4
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %92

112:                                              ; preds = %92
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %131, %112
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @OUTPUT_DIM, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = sitofp i32 %118 to float
  %120 = load i32, i32* @OUTPUT_DIM, align 4
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %119, %121
  %123 = fptosi float %122 to i32
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %113

134:                                              ; preds = %113
  %135 = call i32 (...) @get_current_time()
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %140 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %137, %struct.TYPE_10__* %138, %struct.TYPE_10__* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %141)
  %143 = call i32 @ccv_nnc_cmd_exec(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8, i32 %136, i32 0, i32 %140, i32 %142, i32 0)
  %144 = call i32 (...) @get_current_time()
  %145 = load i32, i32* %14, align 4
  %146 = sub i32 %144, %145
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @OUTPUT_SIZE, align 4
  %150 = load i32, i32* @OUTPUT_SIZE, align 4
  %151 = load i32, i32* @OUTPUT_DIM, align 4
  %152 = call i32 (i32, ...) @ONE_CPU_TENSOR(i32 %149, i32 %150, i32 %151)
  %153 = call %struct.TYPE_10__* @ccv_nnc_tensor_new(i32 0, i32 %152, i32 0)
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %15, align 8
  %154 = load i64, i64* @CCV_NNC_BACKEND_CPU_OPT, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = call i32 (...) @get_current_time()
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %164, %struct.TYPE_10__* %165, %struct.TYPE_10__* %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %169 = call i32 (%struct.TYPE_10__*, ...) @TENSOR_LIST(%struct.TYPE_10__* %168)
  %170 = call i32 @ccv_nnc_cmd_exec(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8, i32 %163, i32 0, i32 %167, i32 %169, i32 0)
  %171 = call i32 (...) @get_current_time()
  %172 = load i32, i32* %14, align 4
  %173 = sub i32 %171, %172
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %226, %134
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @OUTPUT_DIM, align 4
  %179 = load i32, i32* @OUTPUT_SIZE, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* @OUTPUT_SIZE, align 4
  %182 = mul nsw i32 %180, %181
  %183 = icmp slt i32 %177, %182
  br i1 %183, label %184, label %229

184:                                              ; preds = %176
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %192, %200
  %202 = sitofp i32 %201 to float
  %203 = call i32 @fabs(float %202)
  %204 = sitofp i32 %203 to double
  %205 = fcmp ogt double %204, 1.000000e-05
  br i1 %205, label %206, label %225

206:                                              ; preds = %184
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %215, i32 %223)
  br label %225

225:                                              ; preds = %206, %184
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %176

229:                                              ; preds = %176
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %231 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %230)
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %233 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %235 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %234)
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %237 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %236)
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = call i32 @ccv_nnc_tensor_free(%struct.TYPE_10__* %238)
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local %struct.TYPE_10__* @ccv_nnc_tensor_new(i32, i32, i32) #1

declare dso_local i32 @ONE_CPU_TENSOR(i32, ...) #1

declare dso_local void @CMD_CONVOLUTION_FORWARD(%struct.TYPE_11__* sret, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_nnc_hint_auto(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_nnc_hint_verify(i32, i32, i32, i32) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_open_close(i32*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local i32 @ccv_nnc_cmd_exec(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i32, i32, i32, i32, i32) #1

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
