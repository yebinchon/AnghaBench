; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_slice_rpl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_refs.c_ff_hevc_slice_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32*, i32**, i64, i64, i64* }

@HEVC_SLICE_B = common dso_local global i64 0, align 8
@ST_CURR_BEF = common dso_local global i64 0, align 8
@ST_CURR_AFT = common dso_local global i64 0, align 8
@LT_CURR = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Zero refs in the frame RPS.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HEVC_MAX_REFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid reference index.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_slice_rpl(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca [3 x i32], align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HEVC_SLICE_B, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 2, i32 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call i32 @init_slice_rpl(%struct.TYPE_14__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %319

31:                                               ; preds = %1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load i64, i64* @ST_CURR_BEF, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i64, i64* @ST_CURR_AFT, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %38, %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i64, i64* @LT_CURR, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %46, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %31
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(i32 %59, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %2, align 4
  br label %319

63:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %315, %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %318

68:                                               ; preds = %64
  %69 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %69, i8 0, i64 40, i1 false)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %75
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %11, align 8
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i64, i64* @ST_CURR_AFT, align 8
  br label %84

82:                                               ; preds = %68
  %83 = load i64, i64* @ST_CURR_BEF, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %77, align 4
  %87 = getelementptr inbounds i32, i32* %77, i64 1
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* @ST_CURR_BEF, align 8
  br label %94

92:                                               ; preds = %84
  %93 = load i64, i64* @ST_CURR_AFT, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %87, align 4
  %97 = getelementptr inbounds i32, i32* %87, i64 1
  %98 = load i64, i64* @LT_CURR, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %185, %94
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %102, %108
  br i1 %109, label %110, label %186

110:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %182, %110
  %112 = load i32, i32* %7, align 4
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %114 = call i32 @FF_ARRAY_ELEMS(i32* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %185

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %124
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %178, %116
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @HEVC_MAX_REFS, align 4
  %136 = icmp slt i32 %134, %135
  br label %137

137:                                              ; preds = %132, %126
  %138 = phi i1 [ false, %126 ], [ %136, %132 ]
  br i1 %138, label %139, label %181

139:                                              ; preds = %137
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %168, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %139
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %126

181:                                              ; preds = %137
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %111

185:                                              ; preds = %111
  br label %100

186:                                              ; preds = %100
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %271

194:                                              ; preds = %186
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %267, %194
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %6, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %196, %202
  br i1 %203, label %204, label %270

204:                                              ; preds = %195
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = load i32**, i32*** %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds i32*, i32** %207, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sge i32 %215, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %204
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @AV_LOG_ERROR, align 4
  %224 = call i32 @av_log(i32 %222, i32 %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %225, i32* %2, align 4
  br label %319

226:                                              ; preds = %204
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %232, i32* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %244, i32* %250, align 4
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %256, i32* %262, align 4
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %226
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %195

270:                                              ; preds = %195
  br label %286

271:                                              ; preds = %186
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %273 = call i32 @memcpy(%struct.TYPE_13__* %272, %struct.TYPE_13__* %10, i32 40)
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @FFMIN(i32 %276, i32 %282)
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  br label %286

286:                                              ; preds = %271, %270
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %6, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %286
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = icmp ult i64 %295, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %292
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  store i32 %309, i32* %313, align 8
  br label %314

314:                                              ; preds = %301, %292, %286
  br label %315

315:                                              ; preds = %314
  %316 = load i64, i64* %6, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %6, align 8
  br label %64

318:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %318, %219, %56, %29
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local i32 @init_slice_rpl(%struct.TYPE_14__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
