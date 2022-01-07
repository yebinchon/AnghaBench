; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_blocks_try_fold.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_tensor_blocks_try_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @_ccv_nnc_tensor_blocks_try_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_tensor_blocks_try_fold(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 %10
  %12 = call i64 @TENSOR_IS_UNFOLDABLE_AS_INPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %290, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %17
  %19 = call i32 @TENSOR_IS_UNFOLDABLE_AS_OUTPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %290

31:                                               ; preds = %21, %14
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %290

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %290

51:                                               ; preds = %41
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %57, %63
  br i1 %64, label %65, label %290

65:                                               ; preds = %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = call i64 @ccv_array_get(%struct.TYPE_13__* %71, i32 0)
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = call i64 @ccv_array_get(%struct.TYPE_13__* %80, i32 0)
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %74, %83
  br i1 %84, label %85, label %290

85:                                               ; preds = %65
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = call i32 @TENSOR_EXPECT_COMPUTABLE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %89)
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = call i32 @TENSOR_EXPECT_COMPUTABLE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %95)
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = call i32 @ccv_array_free(%struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 5
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %179

125:                                              ; preds = %85
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %125
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  store i64 %154, i64* %161, align 8
  br label %178

162:                                              ; preds = %125
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  store i64 %170, i64* %177, align 8
  br label %178

178:                                              ; preds = %162, %146
  br label %179

179:                                              ; preds = %178, %85
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %179
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %187, %179
  %196 = phi i1 [ true, %179 ], [ %194, %187 ]
  %197 = zext i1 %196 to i32
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  store i32 %197, i32* %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 %205
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %209
  %211 = call i32 @TENSOR_READ_WRITE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %210)
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %214
  %216 = call i32 @TENSOR_READ_WRITE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %215)
  %217 = or i32 %211, %216
  %218 = call i32 @TENSOR_SET_READ_WRITE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %206, i32 %217)
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = call i32 @ccv_array_free(%struct.TYPE_13__* %224)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %228
  %230 = call i64 @TENSOR_IS_UNFOLDABLE_AS_INPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %195
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = call i32 @TENSOR_SET_UNFOLDABLE_AS_INPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %236)
  br label %238

238:                                              ; preds = %232, %195
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 %241
  %243 = call i32 @TENSOR_EXPECT_SET_UNASSIGNED(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %242)
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  store i32 %245, i32* %250, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 8
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %238
  %259 = call i64 @ccv_array_new(i32 4, i32 0, i32 0)
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 8
  store i64 %259, i64* %264, align 8
  br label %265

265:                                              ; preds = %258, %238
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  %274 = call i32 @ccv_array_add_unique_int(i64 %271, i32 %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 7
  store i64 0, i64* %279, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 6
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %284, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %289, align 8
  store i32 1, i32* %4, align 4
  br label %291

290:                                              ; preds = %65, %51, %41, %31, %21, %3
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %265
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i64 @TENSOR_IS_UNFOLDABLE_AS_INPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @TENSOR_IS_UNFOLDABLE_AS_OUTPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TENSOR_EXPECT_COMPUTABLE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_13__*) #1

declare dso_local i32 @TENSOR_SET_READ_WRITE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, i32) #1

declare dso_local i32 @TENSOR_READ_WRITE(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @TENSOR_SET_UNFOLDABLE_AS_INPUT(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @TENSOR_EXPECT_SET_UNASSIGNED(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i64 @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_add_unique_int(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
