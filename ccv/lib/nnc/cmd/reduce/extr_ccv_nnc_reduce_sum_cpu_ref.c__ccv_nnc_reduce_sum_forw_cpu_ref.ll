; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/reduce/extr_ccv_nnc_reduce_sum_cpu_ref.c__ccv_nnc_reduce_sum_forw_cpu_ref.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/reduce/extr_ccv_nnc_reduce_sum_cpu_ref.c__ccv_nnc_reduce_sum_forw_cpu_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { float* }
%struct.TYPE_10__ = type { i64* }

@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ccv_nnc_reduce_sum_forw_cpu_ref(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %5, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %6, align 8
  %45 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__* %48, i32* %44)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__* %50, i32* %47)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = call i32 @ccv_nnc_tensor_view_check_broadcast_dim(%struct.TYPE_12__* %52, i32* %44)
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %8, align 8
  %58 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %9, align 8
  %61 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %65, i32* %57)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %67, i32* %60)
  %69 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %70 = add nsw i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %10, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = call i32 @ccv_nnc_tensor_zero(%struct.TYPE_12__* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  store float* %78, float** %12, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  store float* %82, float** %13, align 8
  %83 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %83, align 16
  br label %84

84:                                               ; preds = %250, %2
  %85 = getelementptr inbounds i32, i32* %72, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = getelementptr inbounds i32, i32* %44, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %254

90:                                               ; preds = %84
  %91 = getelementptr inbounds i32, i32* %47, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load float*, float** %13, align 8
  br label %111

96:                                               ; preds = %90
  %97 = load float*, float** %13, align 8
  %98 = getelementptr inbounds i32, i32* %72, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = getelementptr inbounds i32, i32* %60, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = getelementptr inbounds i32, i32* %60, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %102, %104
  %106 = getelementptr inbounds i32, i32* %60, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %105, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %97, i64 %109
  br label %111

111:                                              ; preds = %96, %94
  %112 = phi float* [ %95, %94 ], [ %110, %96 ]
  store float* %112, float** %14, align 8
  %113 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %231, %111
  %115 = getelementptr inbounds i32, i32* %72, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %44, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %235

120:                                              ; preds = %114
  %121 = getelementptr inbounds i32, i32* %47, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load float*, float** %14, align 8
  br label %138

126:                                              ; preds = %120
  %127 = load float*, float** %14, align 8
  %128 = getelementptr inbounds i32, i32* %72, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds i32, i32* %60, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %129, %131
  %133 = getelementptr inbounds i32, i32* %60, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %127, i64 %136
  br label %138

138:                                              ; preds = %126, %124
  %139 = phi float* [ %125, %124 ], [ %137, %126 ]
  store float* %139, float** %15, align 8
  %140 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 0, i32* %140, align 8
  br label %141

141:                                              ; preds = %215, %138
  %142 = getelementptr inbounds i32, i32* %72, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds i32, i32* %44, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %219

147:                                              ; preds = %141
  %148 = getelementptr inbounds i32, i32* %47, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load float*, float** %15, align 8
  br label %162

153:                                              ; preds = %147
  %154 = load float*, float** %15, align 8
  %155 = getelementptr inbounds i32, i32* %72, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds i32, i32* %60, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %156, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %154, i64 %160
  br label %162

162:                                              ; preds = %153, %151
  %163 = phi float* [ %152, %151 ], [ %161, %153 ]
  store float* %163, float** %16, align 8
  %164 = getelementptr inbounds i32, i32* %47, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %183, %167
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds i32, i32* %44, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %168
  %174 = load float*, float** %12, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %174, i64 %176
  %178 = load float, float* %177, align 4
  %179 = load float*, float** %16, align 8
  %180 = getelementptr inbounds float, float* %179, i64 0
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, %178
  store float %182, float* %180, align 4
  br label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %168

186:                                              ; preds = %168
  br label %209

187:                                              ; preds = %162
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %205, %187
  %189 = load i32, i32* %11, align 4
  %190 = getelementptr inbounds i32, i32* %44, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load float*, float** %12, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load float, float* %197, align 4
  %199 = load float*, float** %16, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fadd float %203, %198
  store float %204, float* %202, align 4
  br label %205

205:                                              ; preds = %193
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %188

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %208, %186
  %210 = getelementptr inbounds i32, i32* %57, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = load float*, float** %12, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds float, float* %212, i64 %213
  store float* %214, float** %12, align 8
  br label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds i32, i32* %72, i64 2
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %141

219:                                              ; preds = %141
  %220 = getelementptr inbounds i32, i32* %57, i64 2
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds i32, i32* %44, i64 2
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %221, %223
  %225 = getelementptr inbounds i32, i32* %57, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %224, %226
  %228 = load float*, float** %12, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds float, float* %228, i64 %229
  store float* %230, float** %12, align 8
  br label %231

231:                                              ; preds = %219
  %232 = getelementptr inbounds i32, i32* %72, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  br label %114

235:                                              ; preds = %114
  %236 = getelementptr inbounds i32, i32* %57, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds i32, i32* %44, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %237, %239
  %241 = getelementptr inbounds i32, i32* %57, i64 2
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 %240, %242
  %244 = getelementptr inbounds i32, i32* %57, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %243, %245
  %247 = load float*, float** %12, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds float, float* %247, i64 %248
  store float* %249, float** %12, align 8
  br label %250

250:                                              ; preds = %235
  %251 = getelementptr inbounds i32, i32* %72, i64 0
  %252 = load i32, i32* %251, align 16
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 16
  br label %84

254:                                              ; preds = %84
  %255 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %255)
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ccv_nnc_tensor_view_check_broadcast_dim(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ccv_nnc_tensor_zero(%struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
