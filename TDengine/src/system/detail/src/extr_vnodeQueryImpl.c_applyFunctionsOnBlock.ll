; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_applyFunctionsOnBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_applyFunctionsOnBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i64 }

@QUERY_RESBUF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i64*, i8*, i32*, i32, i32*)* @applyFunctionsOnBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applyFunctionsOnBlock(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i64* %2, i8* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %16, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GET_FORWARD_DIRECTION_FACTOR(i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = call i32 @validateQueryRangeAndData(%struct.TYPE_18__* %28, i64* %29, %struct.TYPE_20__* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %33 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %110

35:                                               ; preds = %7
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %35
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = call i32 @getForwardStepsInBlock(i32 %46, i32 %47, %struct.TYPE_19__* %48, i64* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %43
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %60, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %86

70:                                               ; preds = %43
  %71 = load i64*, i64** %10, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = add i64 %74, %77
  %79 = getelementptr inbounds i64, i64* %71, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %70, %57
  br label %109

87:                                               ; preds = %35
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %91, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %87, %86
  br label %181

110:                                              ; preds = %7
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %110
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = call i32 @getForwardStepsInBlock(i32 %121, i32 %122, %struct.TYPE_19__* %123, i64* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %118
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %10, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %135, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  br label %161

145:                                              ; preds = %118
  %146 = load i64*, i64** %10, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = sub i64 %149, %152
  %154 = getelementptr inbounds i64, i64* %146, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %155, %157
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %145, %132
  br label %180

162:                                              ; preds = %110
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp sgt i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %162, %161
  br label %181

181:                                              ; preds = %180, %109
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @reviseForwardSteps(%struct.TYPE_18__* %182, i32 %183)
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* %18, align 4
  %190 = icmp sge i32 %189, 0
  br label %191

191:                                              ; preds = %188, %181
  %192 = phi i1 [ false, %181 ], [ %190, %188 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %191
  %199 = load i32, i32* %18, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %198
  %202 = load i64*, i64** %10, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %17, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = add i64 %205, %210
  %212 = getelementptr inbounds i64, i64* %202, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %213, %215
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %201, %198, %191
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @IS_FILE_BLOCK(i32 %222)
  store i32 %223, i32* %19, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %219
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %239, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @isGroupbyNormalCol(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %233, %228, %219
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %241 = load i64*, i64** %10, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %245 = load i32, i32* %19, align 4
  %246 = call i32 @rowwiseApplyAllFunctions(%struct.TYPE_18__* %240, i32* %18, i64* %241, i8* %242, i32* %243, %struct.TYPE_20__* %244, i32 %245)
  %247 = load i32*, i32** %14, align 8
  store i32 %246, i32* %247, align 4
  br label %258

248:                                              ; preds = %233
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %250 = load i32, i32* %18, align 4
  %251 = load i64*, i64** %10, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = load i32*, i32** %12, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call i32 @blockwiseApplyAllFunctions(%struct.TYPE_18__* %249, i32 %250, i64* %251, i8* %252, i32* %253, %struct.TYPE_20__* %254, i32 %255)
  %257 = load i32*, i32** %14, align 8
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %248, %239
  %259 = load i32*, i32** %14, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %258
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %291

272:                                              ; preds = %267
  %273 = load i32*, i32** %14, align 8
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %278, %275
  store i64 %279, i64* %277, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = icmp sle i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %272
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 5
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %288 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %289 = call i32 @setQueryStatus(%struct.TYPE_19__* %287, i32 %288)
  br label %290

290:                                              ; preds = %284, %272
  br label %291

291:                                              ; preds = %290, %267, %258
  %292 = load i32, i32* %18, align 4
  ret i32 %292
}

declare dso_local i32 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i32 @validateQueryRangeAndData(%struct.TYPE_18__*, i64*, %struct.TYPE_20__*) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_19__*) #1

declare dso_local i32 @getForwardStepsInBlock(i32, i32, %struct.TYPE_19__*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reviseForwardSteps(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @IS_FILE_BLOCK(i32) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @rowwiseApplyAllFunctions(%struct.TYPE_18__*, i32*, i64*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @blockwiseApplyAllFunctions(%struct.TYPE_18__*, i32, i64*, i8*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
