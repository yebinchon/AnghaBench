; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_exec_dep_and_tensor_blocks_unroll_count.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_exec_dep_and_tensor_blocks_unroll_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*)* @_ccv_nnc_exec_dep_and_tensor_blocks_unroll_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_exec_dep_and_tensor_blocks_unroll_count(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %235, %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %238

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %29
  %31 = bitcast %struct.TYPE_14__* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @TENSOR_EXPECT_UNASSIGNED(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %234, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %234

43:                                               ; preds = %35
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = bitcast %struct.TYPE_14__* %55 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i64 @TENSOR_EXPECT_ORDINARY(i64 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %51, %43
  %61 = phi i1 [ true, %43 ], [ %59, %51 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %60
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = bitcast %struct.TYPE_14__* %82 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i64 @TENSOR_EXPECT_ORDINARY(i64 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %78, %60
  %88 = phi i1 [ true, %60 ], [ %86, %78 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %100, %87
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %118, %108
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %110

126:                                              ; preds = %110
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %233

130:                                              ; preds = %126
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 %138
  %140 = bitcast %struct.TYPE_14__* %135 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = bitcast %struct.TYPE_14__* %139 to i64*
  %143 = load i64, i64* %142, align 4
  %144 = call i32 @_ccv_nnc_tensor_block_head_after_tail(i32* %131, i64 %141, i64 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %148
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = bitcast %struct.TYPE_14__* %149 to i64*
  %155 = load i64, i64* %154, align 4
  %156 = bitcast %struct.TYPE_14__* %153 to i64*
  %157 = load i64, i64* %156, align 4
  %158 = call i32 @_ccv_nnc_tensor_block_head_after_tail(i32* %145, i64 %155, i64 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %130
  %162 = load i32, i32* %16, align 4
  %163 = icmp sgt i32 %162, 0
  br label %164

164:                                              ; preds = %161, %130
  %165 = phi i1 [ false, %130 ], [ %163, %161 ]
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171, %164
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  store i32 %176, i32* %181, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  store i32 %183, i32* %188, align 4
  br label %235

189:                                              ; preds = %171
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %225, %189
  %198 = load i32, i32* %17, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %209, %200
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %201

217:                                              ; preds = %201
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  br label %225

225:                                              ; preds = %217
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %197

228:                                              ; preds = %197
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i32 @ccv_max(i32 %229, i32 %231)
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %228, %126
  br label %234

234:                                              ; preds = %233, %35, %26
  br label %235

235:                                              ; preds = %234, %174
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %18

238:                                              ; preds = %18
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %238
  store i32 0, i32* %10, align 4
  br label %242

242:                                              ; preds = %256, %241
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %243, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %250
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %242

259:                                              ; preds = %242
  br label %260

260:                                              ; preds = %259, %238
  %261 = load i32, i32* %11, align 4
  ret i32 %261
}

declare dso_local i32 @TENSOR_EXPECT_UNASSIGNED(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @TENSOR_EXPECT_ORDINARY(i64) #1

declare dso_local i32 @_ccv_nnc_tensor_block_head_after_tail(i32*, i64, i64) #1

declare dso_local i32 @ccv_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
