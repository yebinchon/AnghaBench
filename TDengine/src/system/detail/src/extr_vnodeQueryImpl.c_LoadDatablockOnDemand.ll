; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_LoadDatablockOnDemand.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_LoadDatablockOnDemand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 (i32*, i64, i64, i32, i32)* }
%struct.TYPE_32__ = type { i32, i64, i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_27__*, i32*, i32*, %struct.TYPE_31__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i32, i64, i64, i64, i64, %struct.TYPE_28__, i32, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@BLK_DATA_ALL_NEEDED = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_23__* null, align 8
@BLK_DATA_NO_NEEDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"QInfo:%p vid:%d sid:%d id:%s, slot:%d, data block ignored, brange:%lld-%lld, rows:%d\00", align 1
@BLK_DATA_FILEDS_NEEDED = common dso_local global i64 0, align 8
@DISK_DATA_LOAD_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"QInfo:%p id:%s slot:%d, data block ignored by pre-filter, fields loaded, brange:%lld-%lld, rows:%d\00", align 1
@DISK_DATA_DISCARDED = common dso_local global i64 0, align 8
@BLK_FILE_BLOCK = common dso_local global i32 0, align 4
@DISK_DATA_LOADED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LoadDatablockOnDemand(%struct.TYPE_32__* %0, i32** %1, i32* %2, %struct.TYPE_29__* %3, i64 %4, i64 %5, i32 (i64, i32, i64, i32)* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32 (i64, i32, i64, i32)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 (i64, i32, i64, i32)* %6, i32 (i64, i32, i64, i32)** %16, align 8
  store i32 %7, i32* %17, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %18, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %19, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %20, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %21, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %49 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %8
  br label %57

52:                                               ; preds = %8
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  br label %57

57:                                               ; preds = %52, %51
  %58 = phi i32 [ 0, %51 ], [ %56, %52 ]
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SET_FILE_BLOCK_FLAG(i32 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SET_DATA_BLOCK_NOT_LOADED(i32 %65)
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %57
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %84 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82, %74, %57
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %237

94:                                               ; preds = %86
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %237

102:                                              ; preds = %94
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %104 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %237, label %106

106:                                              ; preds = %102, %82
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %237

109:                                              ; preds = %106
  store i64 0, i64* %22, align 8
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @BLK_DATA_ALL_NEEDED, align 8
  store i64 %115, i64* %22, align 8
  br label %175

116:                                              ; preds = %109
  store i64 0, i64* %23, align 8
  br label %117

117:                                              ; preds = %162, %116
  %118 = load i64, i64* %23, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = load i64, i64* %23, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %24, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** @aAggs, align 8
  %133 = load i64, i64* %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i64 (i32*, i64, i64, i32, i32)*, i64 (i32*, i64, i64, i32, i32)** %135, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %23, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = load i64, i64* %23, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i64 %136(i32* %141, i64 %144, i64 %147, i32 %156, i32 %158)
  %160 = load i64, i64* %22, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %22, align 8
  br label %162

162:                                              ; preds = %123
  %163 = load i64, i64* %23, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %23, align 8
  br label %117

165:                                              ; preds = %117
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i64, i64* @BLK_DATA_ALL_NEEDED, align 8
  %172 = load i64, i64* %22, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %22, align 8
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174, %114
  %176 = load i64, i64* %22, align 8
  %177 = load i64, i64* @BLK_DATA_NO_NEEDED, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %215

179:                                              ; preds = %175
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %181 = call i32 @GET_QINFO_ADDR(%struct.TYPE_30__* %180)
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, i32, i32, i64, i64, i64, i32, ...) @qTrace(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %184, i64 %188, i64 %192, i64 %195, i32 %199, i64 %202, i32 %205)
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @setTimestampRange(%struct.TYPE_29__* %207, i64 %210, i64 %213)
  br label %236

215:                                              ; preds = %175
  %216 = load i64, i64* %22, align 8
  %217 = load i64, i64* @BLK_DATA_FILEDS_NEEDED, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %221 = load i32*, i32** %20, align 8
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %223 = load i32**, i32*** %11, align 8
  %224 = call i64 @loadDataBlockFieldsInfo(%struct.TYPE_29__* %220, i32* %221, %struct.TYPE_32__* %222, i32** %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i64, i64* @DISK_DATA_LOAD_FAILED, align 8
  store i64 %227, i64* %9, align 8
  br label %434

228:                                              ; preds = %219
  br label %235

229:                                              ; preds = %215
  %230 = load i64, i64* %22, align 8
  %231 = load i64, i64* @BLK_DATA_ALL_NEEDED, align 8
  %232 = icmp eq i64 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  br label %238

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %179
  br label %432

237:                                              ; preds = %106, %102, %94, %86
  br label %238

238:                                              ; preds = %237, %229
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %240 = load i32*, i32** %20, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %242 = load i32**, i32*** %11, align 8
  %243 = call i64 @loadDataBlockFieldsInfo(%struct.TYPE_29__* %239, i32* %240, %struct.TYPE_32__* %241, i32** %242)
  %244 = icmp slt i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = load i64, i64* @DISK_DATA_LOAD_FAILED, align 8
  store i64 %246, i64* %9, align 8
  br label %434

247:                                              ; preds = %238
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp sle i64 %250, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %247
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp sge i64 %258, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %255
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %265 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %287, label %267

267:                                              ; preds = %263, %255, %247
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp sge i64 %270, %273
  br i1 %274, label %275, label %317

275:                                              ; preds = %267
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp sle i64 %278, %281
  br i1 %282, label %283, label %317

283:                                              ; preds = %275
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %285 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %317, label %287

287:                                              ; preds = %283, %263
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %289 = load i32**, i32*** %11, align 8
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @needToLoadDataBlock(%struct.TYPE_30__* %288, i32* %290, i32* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %316, label %296

296:                                              ; preds = %287
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %298 = call i32 @GET_QINFO_ADDR(%struct.TYPE_30__* %297)
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i8*, i32, i32, i64, i64, i64, i32, ...) @qTrace(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %298, i32 %301, i64 %304, i64 %307, i64 %310, i32 %313)
  %315 = load i64, i64* @DISK_DATA_DISCARDED, align 8
  store i64 %315, i64* %9, align 8
  br label %434

316:                                              ; preds = %287
  br label %317

317:                                              ; preds = %316, %283, %275, %267
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %319 = load i32, i32* @BLK_FILE_BLOCK, align 4
  %320 = call i32 @getBlockBasicInfo(%struct.TYPE_32__* %318, i32 %319)
  store i32 %320, i32* %25, align 4
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %322 = call i32 @needPrimaryTimestampCol(%struct.TYPE_30__* %321, i32* %25)
  store i32 %322, i32* %26, align 4
  %323 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %324 = load i32**, i32*** %11, align 8
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %326 = load i64, i64* %14, align 8
  %327 = load i32, i32* %26, align 4
  %328 = call i64 @loadDataBlockIntoMem(%struct.TYPE_32__* %323, i32** %324, %struct.TYPE_29__* %325, i64 %326, i32 %327, i32 0)
  store i64 %328, i64* %27, align 8
  %329 = load i32*, i32** %12, align 8
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @SET_DATA_BLOCK_LOADED(i32 %330)
  %332 = load i64, i64* %27, align 8
  %333 = icmp ult i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %317
  %335 = load i64, i64* @DISK_DATA_LOAD_FAILED, align 8
  store i64 %335, i64* %9, align 8
  br label %434

336:                                              ; preds = %317
  %337 = load i32, i32* %26, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %383

339:                                              ; preds = %336
  %340 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %16, align 8
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 6
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 %340(i64 %345, i32 %348, i64 %351, i32 %355)
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %358 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 8
  %359 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64*, i64** %21, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp eq i64 %361, %364
  br i1 %365, label %366, label %379

366:                                              ; preds = %339
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = load i64*, i64** %21, align 8
  %371 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = sub nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %370, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %369, %377
  br label %379

379:                                              ; preds = %366, %339
  %380 = phi i1 [ false, %339 ], [ %378, %366 ]
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  br label %383

383:                                              ; preds = %379, %336
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = icmp sge i64 %386, %389
  br i1 %390, label %400, label %391

391:                                              ; preds = %383
  %392 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %393 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = sub nsw i64 %397, 1
  %399 = icmp eq i64 %394, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %391, %383
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %402 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %428, label %404

404:                                              ; preds = %400, %391
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp sle i64 %407, %410
  br i1 %411, label %421, label %412

412:                                              ; preds = %404
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 3
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %417 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = add nsw i64 %418, 1
  %420 = icmp eq i64 %415, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %412, %404
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %423 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__* %422)
  %424 = icmp ne i64 %423, 0
  %425 = xor i1 %424, true
  br label %426

426:                                              ; preds = %421, %412
  %427 = phi i1 [ false, %412 ], [ %425, %421 ]
  br label %428

428:                                              ; preds = %426, %400
  %429 = phi i1 [ true, %400 ], [ %427, %426 ]
  %430 = zext i1 %429 to i32
  %431 = call i32 @assert(i32 %430)
  br label %432

432:                                              ; preds = %428, %236
  %433 = load i64, i64* @DISK_DATA_LOADED, align 8
  store i64 %433, i64* %9, align 8
  br label %434

434:                                              ; preds = %432, %334, %296, %245, %226
  %435 = load i64, i64* %9, align 8
  ret i64 %435
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_30__*) #1

declare dso_local i32 @SET_FILE_BLOCK_FLAG(i32) #1

declare dso_local i32 @SET_DATA_BLOCK_NOT_LOADED(i32) #1

declare dso_local i32 @qTrace(i8*, i32, i32, i64, i64, i64, i32, ...) #1

declare dso_local i32 @GET_QINFO_ADDR(%struct.TYPE_30__*) #1

declare dso_local i32 @setTimestampRange(%struct.TYPE_29__*, i64, i64) #1

declare dso_local i64 @loadDataBlockFieldsInfo(%struct.TYPE_29__*, i32*, %struct.TYPE_32__*, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @needToLoadDataBlock(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @getBlockBasicInfo(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @needPrimaryTimestampCol(%struct.TYPE_30__*, i32*) #1

declare dso_local i64 @loadDataBlockIntoMem(%struct.TYPE_32__*, i32**, %struct.TYPE_29__*, i64, i32, i32) #1

declare dso_local i32 @SET_DATA_BLOCK_LOADED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
