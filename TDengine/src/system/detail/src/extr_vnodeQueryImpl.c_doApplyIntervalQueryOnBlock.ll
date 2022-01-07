; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doApplyIntervalQueryOnBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_doApplyIntervalQueryOnBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i64*, i8*, i32*, i64 (i8*, i64, i64, i32)*)* @doApplyIntervalQueryOnBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doApplyIntervalQueryOnBlock(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i64* %3, i8* %4, i32* %5, i64 (i8*, i64, i64, i32)* %6) #0 {
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64 (i8*, i64, i64, i32)*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 (i8*, i64, i64, i32)* %6, i64 (i8*, i64, i64, i32)** %14, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %15, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %16, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %34)
  store i64 %35, i64* %17, align 8
  store i64 -1, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %36

36:                                               ; preds = %7, %510
  store i64 0, i64* %20, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i64 (i8*, i64, i64, i32)*, i64 (i8*, i64, i64, i32)** %14, align 8
  %43 = call i64 @applyFunctionsOnBlock(%struct.TYPE_19__* %37, %struct.TYPE_23__* %38, i64* %39, i8* %40, i32* %41, i64 (i8*, i64, i64, i32)* %42, i64* %20)
  store i64 %43, i64* %21, align 8
  %44 = load i64, i64* %21, align 8
  %45 = icmp ugt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load i64, i64* %20, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %63

56:                                               ; preds = %36
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %17, align 8
  %69 = mul i64 %67, %68
  %70 = add i64 %66, %69
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %78 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %63
  %81 = load i64, i64* %22, align 8
  %82 = icmp uge i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %85 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83, %76
  %88 = load i64*, i64** %11, align 8
  %89 = load i64, i64* %22, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %18, align 8
  br label %123

92:                                               ; preds = %83, %80
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %102 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %100, %92
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %114 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %113)
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %112, %104
  %118 = phi i1 [ false, %104 ], [ %116, %112 ]
  br label %119

119:                                              ; preds = %117, %100
  %120 = phi i1 [ true, %100 ], [ %118, %117 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  br label %123

123:                                              ; preds = %119, %87
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %125 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i64, i64* %18, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sle i64 %136, %139
  br label %141

141:                                              ; preds = %133, %127
  %142 = phi i1 [ true, %127 ], [ %140, %133 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %19, align 4
  br label %161

144:                                              ; preds = %123
  %145 = load i64, i64* %18, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %153, %156
  br label %158

158:                                              ; preds = %150, %144
  %159 = phi i1 [ true, %144 ], [ %157, %150 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %158, %141
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %163 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %320

165:                                              ; preds = %161
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %187, label %173

173:                                              ; preds = %165
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %173
  %182 = load i64, i64* %18, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %182, %185
  br i1 %186, label %187, label %319

187:                                              ; preds = %181, %173, %165
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %190, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %187
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp sge i64 %198, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  br label %205

205:                                              ; preds = %195, %187
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %208, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %205
  %214 = load i64, i64* %18, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %214, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %213, %205
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 @saveResult(%struct.TYPE_21__* %222, %struct.TYPE_22__* %223, i32 %227)
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %231 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %229, %struct.TYPE_22__* %230)
  br label %318

232:                                              ; preds = %213
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %235, %238
  br i1 %239, label %240, label %283

240:                                              ; preds = %232
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %23, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @getAlignedIntervalQueryRange(%struct.TYPE_20__* %244, i64 %247, i32 %250, i64 %253)
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %257 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %255, %struct.TYPE_22__* %256)
  %258 = load i32, i32* %19, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %240
  %261 = load i64, i64* %23, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %261, %264
  br label %266

266:                                              ; preds = %260, %240
  %267 = phi i1 [ false, %240 ], [ %265, %260 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ugt i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %266
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = call i32 @saveResult(%struct.TYPE_21__* %275, %struct.TYPE_22__* %276, i32 %280)
  br label %282

282:                                              ; preds = %274, %266
  br label %317

283:                                              ; preds = %232
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %286 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %284, %struct.TYPE_22__* %285)
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp sgt i64 %289, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %283
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp sle i64 %297, %300
  br label %302

302:                                              ; preds = %294, %283
  %303 = phi i1 [ false, %283 ], [ %301, %294 ]
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %302
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = call i32 @saveResult(%struct.TYPE_21__* %309, %struct.TYPE_22__* %310, i32 %314)
  br label %316

316:                                              ; preds = %308, %302
  br label %317

317:                                              ; preds = %316, %282
  br label %318

318:                                              ; preds = %317, %219
  br label %554

319:                                              ; preds = %181
  br label %478

320:                                              ; preds = %161
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = icmp slt i64 %323, %326
  br i1 %327, label %342, label %328

328:                                              ; preds = %320
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp slt i64 %331, %334
  br i1 %335, label %342, label %336

336:                                              ; preds = %328
  %337 = load i64, i64* %18, align 8
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp slt i64 %337, %340
  br i1 %341, label %342, label %477

342:                                              ; preds = %336, %328, %320
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %345, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %342
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp sle i64 %353, %356
  %358 = zext i1 %357 to i32
  %359 = call i32 @assert(i32 %358)
  br label %360

360:                                              ; preds = %350, %342
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp slt i64 %363, %366
  br i1 %367, label %377, label %368

368:                                              ; preds = %360
  %369 = load i64, i64* %18, align 8
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp slt i64 %369, %372
  br i1 %373, label %374, label %390

374:                                              ; preds = %368
  %375 = load i64, i64* %18, align 8
  %376 = icmp ne i64 %375, -1
  br i1 %376, label %377, label %390

377:                                              ; preds = %374, %360
  %378 = load i32, i32* %19, align 4
  %379 = call i32 @assert(i32 %378)
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = trunc i64 %384 to i32
  %386 = call i32 @saveResult(%struct.TYPE_21__* %380, %struct.TYPE_22__* %381, i32 %385)
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %389 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %387, %struct.TYPE_22__* %388)
  br label %476

390:                                              ; preds = %374, %368
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = icmp eq i64 %393, %396
  br i1 %397, label %398, label %441

398:                                              ; preds = %390
  %399 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %24, align 8
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = call i32 @getAlignedIntervalQueryRange(%struct.TYPE_20__* %402, i64 %405, i32 %408, i64 %411)
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %415 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %413, %struct.TYPE_22__* %414)
  %416 = load i32, i32* %19, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %398
  %419 = load i64, i64* %24, align 8
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 3
  %422 = load i64, i64* %421, align 8
  %423 = icmp sgt i64 %419, %422
  br label %424

424:                                              ; preds = %418, %398
  %425 = phi i1 [ false, %398 ], [ %423, %418 ]
  %426 = zext i1 %425 to i32
  %427 = call i32 @assert(i32 %426)
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp ugt i64 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %424
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = call i32 @saveResult(%struct.TYPE_21__* %433, %struct.TYPE_22__* %434, i32 %438)
  br label %440

440:                                              ; preds = %432, %424
  br label %475

441:                                              ; preds = %390
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %444 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %442, %struct.TYPE_22__* %443)
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = icmp slt i64 %447, %450
  br i1 %451, label %452, label %460

452:                                              ; preds = %441
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = icmp sge i64 %455, %458
  br label %460

460:                                              ; preds = %452, %441
  %461 = phi i1 [ false, %441 ], [ %459, %452 ]
  %462 = zext i1 %461 to i32
  %463 = call i32 @assert(i32 %462)
  %464 = load i32, i32* %19, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %460
  %467 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %468 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = trunc i64 %471 to i32
  %473 = call i32 @saveResult(%struct.TYPE_21__* %467, %struct.TYPE_22__* %468, i32 %472)
  br label %474

474:                                              ; preds = %466, %460
  br label %475

475:                                              ; preds = %474, %440
  br label %476

476:                                              ; preds = %475, %377
  br label %554

477:                                              ; preds = %336
  br label %478

478:                                              ; preds = %477, %319
  %479 = load i32, i32* %19, align 4
  %480 = call i32 @assert(i32 %479)
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %482 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = trunc i64 %485 to i32
  %487 = call i32 @saveResult(%struct.TYPE_21__* %481, %struct.TYPE_22__* %482, i32 %486)
  %488 = load i64, i64* %18, align 8
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = icmp sge i64 %488, %491
  br i1 %492, label %493, label %497

493:                                              ; preds = %478
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %495 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %510, label %497

497:                                              ; preds = %493, %478
  %498 = load i64, i64* %18, align 8
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = icmp sle i64 %498, %501
  br i1 %502, label %503, label %508

503:                                              ; preds = %497
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %505 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__* %504)
  %506 = icmp ne i64 %505, 0
  %507 = xor i1 %506, true
  br label %508

508:                                              ; preds = %503, %497
  %509 = phi i1 [ false, %497 ], [ %507, %503 ]
  br label %510

510:                                              ; preds = %508, %493
  %511 = phi i1 [ true, %493 ], [ %509, %508 ]
  %512 = zext i1 %511 to i32
  %513 = call i32 @assert(i32 %512)
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %515 = load i64, i64* %18, align 8
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = call i32 @getAlignedIntervalQueryRange(%struct.TYPE_20__* %514, i64 %515, i32 %518, i64 %521)
  %523 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %524 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %525 = call i32 @saveIntervalQueryRange(%struct.TYPE_19__* %523, %struct.TYPE_22__* %524)
  %526 = load i64 (i8*, i64, i64, i32)*, i64 (i8*, i64, i64, i32)** %14, align 8
  %527 = load i64*, i64** %11, align 8
  %528 = bitcast i64* %527 to i8*
  %529 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %533 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %532, i32 0, i32 3
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 4
  %537 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = call i64 %526(i8* %528, i64 %531, i64 %534, i32 %538)
  store i64 %539, i64* %25, align 8
  %540 = load i64, i64* %25, align 8
  %541 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load i64, i64* %21, align 8
  %545 = load i64, i64* %17, align 8
  %546 = mul i64 %544, %545
  %547 = add i64 %543, %546
  %548 = icmp eq i64 %540, %547
  %549 = zext i1 %548 to i32
  %550 = call i32 @assert(i32 %549)
  %551 = load i64, i64* %25, align 8
  %552 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 0
  store i64 %551, i64* %553, align 8
  br label %36

554:                                              ; preds = %476, %318
  ret void
}

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i64 @applyFunctionsOnBlock(%struct.TYPE_19__*, %struct.TYPE_23__*, i64*, i8*, i32*, i64 (i8*, i64, i64, i32)*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_20__*) #1

declare dso_local i32 @saveResult(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @saveIntervalQueryRange(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @getAlignedIntervalQueryRange(%struct.TYPE_20__*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
