; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_average_pool_forward_propagate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_average_pool_forward_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { float* }

@CCV_32F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__**)* @_ccv_convnet_average_pool_forward_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_convnet_average_pool_forward_propagate(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %6, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ccv_convnet_make_output(%struct.TYPE_16__* %28, i32 %31, i32 %34, i32* %7, i32* %8, i32* %9)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CCV_GET_DATA_TYPE(i32 %53)
  %55 = load i32, i32* @CCV_32F, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CCV_GET_CHANNEL(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @CCV_32F, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.TYPE_15__* @ccv_dense_matrix_renew(%struct.TYPE_15__* %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 0)
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %73, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %15, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load float*, float** %76, align 8
  store float* %77, float** %21, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 8
  store float* %81, float** %22, align 8
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %256, %3
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %259

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @ccv_max(i32 %93, i32 0)
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %94, %99
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ccv_min(i32 %108, i32 %111)
  %113 = add nsw i32 %101, %112
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %113, %120
  store i32 %121, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %234, %88
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %237

128:                                              ; preds = %122
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @ccv_max(i32 %133, i32 0)
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sub nsw i32 %134, %139
  store i32 %140, i32* %25, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ccv_min(i32 %148, i32 %151)
  %153 = add nsw i32 %141, %152
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sub nsw i32 %153, %160
  store i32 %161, i32* %26, align 4
  store i32 0, i32* %18, align 4
  br label %162

162:                                              ; preds = %230, %128
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %233

166:                                              ; preds = %162
  store float 0.000000e+00, float* %27, align 4
  %167 = load i32, i32* %23, align 4
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %208, %166
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %211

172:                                              ; preds = %168
  %173 = load i32, i32* %25, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %204, %172
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %207

178:                                              ; preds = %174
  %179 = load float*, float** %21, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %11, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %12, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = add nsw i32 %186, %193
  %195 = load i32, i32* %13, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %179, i64 %199
  %201 = load float, float* %200, align 4
  %202 = load float, float* %27, align 4
  %203 = fadd float %202, %201
  store float %203, float* %27, align 4
  br label %204

204:                                              ; preds = %178
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %174

207:                                              ; preds = %174
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %20, align 4
  br label %168

211:                                              ; preds = %168
  %212 = load float, float* %27, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %25, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %24, align 4
  %217 = load i32, i32* %23, align 4
  %218 = sub nsw i32 %216, %217
  %219 = mul nsw i32 %215, %218
  %220 = sitofp i32 %219 to float
  %221 = fdiv float %212, %220
  %222 = load float*, float** %22, align 8
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %13, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %222, i64 %228
  store float %221, float* %229, align 4
  br label %230

230:                                              ; preds = %211
  %231 = load i32, i32* %18, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %18, align 4
  br label %162

233:                                              ; preds = %162
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %17, align 4
  br label %122

237:                                              ; preds = %122
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %13, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load float*, float** %21, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds float, float* %245, i64 %246
  store float* %247, float** %21, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %13, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load float*, float** %22, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds float, float* %253, i64 %254
  store float* %255, float** %22, align 8
  br label %256

256:                                              ; preds = %237
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %16, align 4
  br label %82

259:                                              ; preds = %82
  ret void
}

declare dso_local i32 @ccv_convnet_make_output(%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local %struct.TYPE_15__* @ccv_dense_matrix_renew(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
