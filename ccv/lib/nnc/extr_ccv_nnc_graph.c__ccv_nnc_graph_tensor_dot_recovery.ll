; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_tensor_dot_recovery.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_tensor_dot_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32*, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_19__**, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @_ccv_nnc_graph_tensor_dot_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_tensor_dot_recovery(%struct.TYPE_21__* noalias sret %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %132, %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %135

35:                                               ; preds = %27
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @ccv_array_get(%struct.TYPE_24__* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %83, %35
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %42
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %51, i64 %53
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %48
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %60, i64 %62
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_19__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %70, i64 %72
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = bitcast %struct.TYPE_19__* %74 to i32*
  %76 = call i32 @_ccv_nnc_graph_dot_tensor_multiview_count(i32* %75)
  br label %78

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %67
  %79 = phi i32 [ %76, %67 ], [ 1, %77 ]
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %48
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %42

86:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %128, %86
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %87
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %96, i64 %98
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = icmp ne %struct.TYPE_19__* %100, null
  br i1 %101, label %102, label %127

102:                                              ; preds = %93
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %105, i64 %107
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_19__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %115, i64 %117
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = bitcast %struct.TYPE_19__* %119 to i32*
  %121 = call i32 @_ccv_nnc_graph_dot_tensor_multiview_count(i32* %120)
  br label %123

122:                                              ; preds = %102
  br label %123

123:                                              ; preds = %122, %112
  %124 = phi i32 [ %121, %112 ], [ 1, %122 ]
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %123, %93
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %87

131:                                              ; preds = %87
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %27

135:                                              ; preds = %27
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 40, %140
  %142 = trunc i64 %141 to i32
  %143 = call i64 @ccmalloc(i32 %142)
  %144 = inttoptr i64 %143 to %struct.TYPE_20__*
  br label %146

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %138
  %147 = phi %struct.TYPE_20__* [ %144, %138 ], [ null, %145 ]
  store %struct.TYPE_20__* %147, %struct.TYPE_20__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %371, %146
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %374

156:                                              ; preds = %148
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i64 @ccv_array_get(%struct.TYPE_24__* %159, i32 %160)
  %162 = inttoptr i64 %161 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %10, align 8
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %263, %156
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %266

169:                                              ; preds = %163
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %172, i64 %174
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  store %struct.TYPE_19__* %176, %struct.TYPE_19__** %11, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %178 = icmp ne %struct.TYPE_19__* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %169
  br label %263

180:                                              ; preds = %169
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %182 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_19__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %186 = bitcast %struct.TYPE_19__* %185 to i32*
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %188 = call i32 @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots(i32* %186, %struct.TYPE_20__* %187, i32* %9)
  br label %262

189:                                              ; preds = %180
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %197 = ptrtoint %struct.TYPE_19__* %196 to i64
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  store i64 %197, i64* %202, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 2
  store i64 %206, i64* %211, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %213 = call i64 @CCV_IS_TENSOR_VIEW(%struct.TYPE_19__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %189
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %217 = bitcast %struct.TYPE_19__* %216 to %struct.TYPE_18__*
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  br label %225

220:                                              ; preds = %189
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  br label %225

225:                                              ; preds = %220, %215
  %226 = phi i32* [ %219, %215 ], [ %224, %220 ]
  store i32* %226, i32** %12, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = call i32 @ccv_nnc_dimension_count(i32* %227)
  %229 = load i32*, i32** %12, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %228, %231
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %232, %238
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %242)
  %244 = mul nsw i32 %239, %243
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %13, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %13, align 8
  %253 = add i64 %251, %252
  %254 = sub i64 %253, 1
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  store i64 %254, i64* %259, align 8
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %262

262:                                              ; preds = %225, %184
  br label %263

263:                                              ; preds = %262, %179
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %163

266:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %367, %266
  %268 = load i32, i32* %5, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %370

273:                                              ; preds = %267
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %276, i64 %278
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  store %struct.TYPE_19__* %280, %struct.TYPE_19__** %14, align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %282 = icmp ne %struct.TYPE_19__* %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %273
  br label %367

284:                                              ; preds = %273
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %286 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_19__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %290 = bitcast %struct.TYPE_19__* %289 to i32*
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %292 = call i32 @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots(i32* %290, %struct.TYPE_20__* %291, i32* %9)
  br label %366

293:                                              ; preds = %284
  %294 = load i32, i32* %9, align 4
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 0
  store i32 %294, i32* %299, align 8
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %301 = ptrtoint %struct.TYPE_19__* %300 to i64
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  store i64 %301, i64* %306, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 2
  store i64 %310, i64* %315, align 8
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %317 = call i64 @CCV_IS_TENSOR_VIEW(%struct.TYPE_19__* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %293
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %321 = bitcast %struct.TYPE_19__* %320 to %struct.TYPE_18__*
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  br label %329

324:                                              ; preds = %293
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  br label %329

329:                                              ; preds = %324, %319
  %330 = phi i32* [ %323, %319 ], [ %328, %324 ]
  store i32* %330, i32** %15, align 8
  %331 = load i32*, i32** %15, align 8
  %332 = call i32 @ccv_nnc_dimension_count(i32* %331)
  %333 = load i32*, i32** %15, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 %332, %335
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %336, %342
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %346)
  %348 = mul nsw i32 %343, %347
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %16, align 8
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* %16, align 8
  %357 = add i64 %355, %356
  %358 = sub i64 %357, 1
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 3
  store i64 %358, i64* %363, align 8
  %364 = load i32, i32* %9, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %9, align 4
  br label %366

366:                                              ; preds = %329, %288
  br label %367

367:                                              ; preds = %366, %283
  %368 = load i32, i32* %5, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %5, align 4
  br label %267

370:                                              ; preds = %267
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %4, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %4, align 4
  br label %148

374:                                              ; preds = %148
  %375 = load i32, i32* %9, align 4
  store i32 %375, i32* %6, align 4
  %376 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %377 = load i32, i32* %6, align 4
  %378 = call i32 @_ccv_nnc_tensor_dot_sort_by_ptr(%struct.TYPE_20__* %376, i32 %377, i32 0)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %379 = load i32, i32* %6, align 4
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %374
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i64 0
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  br label %387

386:                                              ; preds = %374
  br label %387

387:                                              ; preds = %386, %381
  %388 = phi i64 [ %385, %381 ], [ 0, %386 ]
  store i64 %388, i64* %19, align 8
  %389 = load i32, i32* %6, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %387
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i64 0
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  br label %397

396:                                              ; preds = %387
  br label %397

397:                                              ; preds = %396, %391
  %398 = phi i64 [ %395, %391 ], [ 0, %396 ]
  store i64 %398, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %399

399:                                              ; preds = %454, %397
  %400 = load i32, i32* %4, align 4
  %401 = load i32, i32* %6, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %457

403:                                              ; preds = %399
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* %19, align 8
  %411 = icmp ne i64 %409, %410
  br i1 %411, label %412, label %421

412:                                              ; preds = %403
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %19, align 8
  %419 = load i32, i32* %17, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %412, %403
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %423 = load i32, i32* %4, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* %20, align 8
  %429 = icmp ugt i64 %427, %428
  br i1 %429, label %430, label %441

430:                                              ; preds = %421
  %431 = load i64, i64* %20, align 8
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %433 = load i32, i32* %4, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = call i64 @ccv_max(i64 %431, i64 %437)
  store i64 %438, i64* %20, align 8
  %439 = load i32, i32* %18, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %18, align 4
  br label %441

441:                                              ; preds = %430, %421
  %442 = load i32, i32* %17, align 4
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %444 = load i32, i32* %4, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 4
  store i32 %442, i32* %447, align 8
  %448 = load i32, i32* %18, align 4
  %449 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %450 = load i32, i32* %4, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %452, i32 0, i32 5
  store i32 %448, i32* %453, align 4
  br label %454

454:                                              ; preds = %441
  %455 = load i32, i32* %4, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %4, align 4
  br label %399

457:                                              ; preds = %399
  %458 = load i32, i32* %17, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %21, align 4
  %460 = load i32, i32* %18, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %22, align 4
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* %21, align 4
  %464 = add nsw i32 %462, %463
  %465 = load i32, i32* %22, align 4
  %466 = add nsw i32 %464, %465
  %467 = sext i32 %466 to i64
  %468 = mul i64 4, %467
  %469 = trunc i64 %468 to i32
  %470 = call i64 @ccmalloc(i32 %469)
  %471 = inttoptr i64 %470 to i32*
  store i32* %471, i32** %23, align 8
  %472 = load i32*, i32** %23, align 8
  %473 = load i32, i32* %6, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  store i32* %475, i32** %24, align 8
  %476 = load i32*, i32** %24, align 8
  %477 = load i32, i32* %21, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32* %479, i32** %25, align 8
  store i32 0, i32* %4, align 4
  br label %480

480:                                              ; preds = %495, %457
  %481 = load i32, i32* %4, align 4
  %482 = load i32, i32* %6, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %498

484:                                              ; preds = %480
  %485 = load i32, i32* %4, align 4
  %486 = load i32*, i32** %23, align 8
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %488 = load i32, i32* %4, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %486, i64 %493
  store i32 %485, i32* %494, align 4
  br label %495

495:                                              ; preds = %484
  %496 = load i32, i32* %4, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %4, align 4
  br label %480

498:                                              ; preds = %480
  store i32 0, i32* %4, align 4
  br label %499

499:                                              ; preds = %508, %498
  %500 = load i32, i32* %4, align 4
  %501 = load i32, i32* %21, align 4
  %502 = icmp slt i32 %500, %501
  br i1 %502, label %503, label %511

503:                                              ; preds = %499
  %504 = load i32*, i32** %24, align 8
  %505 = load i32, i32* %4, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  store i32 -1, i32* %507, align 4
  br label %508

508:                                              ; preds = %503
  %509 = load i32, i32* %4, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %4, align 4
  br label %499

511:                                              ; preds = %499
  store i32 0, i32* %4, align 4
  br label %512

512:                                              ; preds = %521, %511
  %513 = load i32, i32* %4, align 4
  %514 = load i32, i32* %22, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %524

516:                                              ; preds = %512
  %517 = load i32*, i32** %25, align 8
  %518 = load i32, i32* %4, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  store i32 -1, i32* %520, align 4
  br label %521

521:                                              ; preds = %516
  %522 = load i32, i32* %4, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %4, align 4
  br label %512

524:                                              ; preds = %512
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %525

525:                                              ; preds = %574, %524
  %526 = load i32, i32* %4, align 4
  %527 = load i32, i32* %6, align 4
  %528 = icmp slt i32 %526, %527
  br i1 %528, label %529, label %577

529:                                              ; preds = %525
  %530 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %531 = load i32*, i32** %23, align 8
  %532 = load i32, i32* %4, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i64 %536
  store %struct.TYPE_20__* %537, %struct.TYPE_20__** %26, align 8
  %538 = load i32*, i32** %24, align 8
  %539 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %540 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 8
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %538, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %546, label %555

546:                                              ; preds = %529
  %547 = load i32, i32* %17, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %17, align 4
  %549 = load i32*, i32** %24, align 8
  %550 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 8
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %549, i64 %553
  store i32 %547, i32* %554, align 4
  br label %555

555:                                              ; preds = %546, %529
  %556 = load i32*, i32** %25, align 8
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i32 0, i32 5
  %559 = load i32, i32* %558, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %556, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = icmp eq i32 %562, -1
  br i1 %563, label %564, label %573

564:                                              ; preds = %555
  %565 = load i32, i32* %18, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %18, align 4
  %567 = load i32*, i32** %25, align 8
  %568 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %569 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %568, i32 0, i32 5
  %570 = load i32, i32* %569, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %567, i64 %571
  store i32 %565, i32* %572, align 4
  br label %573

573:                                              ; preds = %564, %555
  br label %574

574:                                              ; preds = %573
  %575 = load i32, i32* %4, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %4, align 4
  br label %525

577:                                              ; preds = %525
  %578 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 0
  %579 = load i32*, i32** %23, align 8
  store i32* %579, i32** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 1
  %581 = load i32*, i32** %24, align 8
  store i32* %581, i32** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 2
  %583 = load i32*, i32** %25, align 8
  store i32* %583, i32** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 3
  %585 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %585, %struct.TYPE_20__** %584, align 8
  ret void
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_19__*) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor_multiview_count(i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots(i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @CCV_IS_TENSOR_VIEW(%struct.TYPE_19__*) #1

declare dso_local i32 @ccv_nnc_dimension_count(i32*) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i32) #1

declare dso_local i32 @_ccv_nnc_tensor_dot_sort_by_ptr(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @ccv_max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
