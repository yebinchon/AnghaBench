; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_i_overlap_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_i_overlap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i64, i64, i64, i64*, i64*, i32***, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@PROFILE_ADVANCED = common dso_local global i64 0, align 8
@CONDOVER_ALL = common dso_local global i64 0, align 8
@ILACE_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_i_overlap_filter(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca [64 x i32]*, align 8
  %5 = alloca [64 x i32]*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca [64 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 11
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  %13 = load i64, i64* @CONFIG_GRAY, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %15, %1
  %25 = phi i1 [ false, %1 ], [ %23, %15 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 4, i32 6
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %30, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 10
  %41 = load i32***, i32**** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32**, i32*** %41, i64 %44
  %46 = load i32**, i32*** %45, align 8
  %47 = bitcast i32** %46 to [64 x i32]*
  store [64 x i32]* %47, [64 x i32]** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 10
  %50 = load i32***, i32**** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32**, i32*** %50, i64 %53
  %55 = load i32**, i32*** %54, align 8
  %56 = bitcast i32** %55 to [64 x i32]*
  store [64 x i32]* %56, [64 x i32]** %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 10
  %59 = load i32***, i32**** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32**, i32*** %59, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = bitcast i32** %64 to [64 x i32]*
  store [64 x i32]* %65, [64 x i32]** %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 10
  %68 = load i32***, i32**** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32**, i32*** %68, i64 %71
  %73 = load i32**, i32*** %72, align 8
  %74 = bitcast i32** %73 to [64 x i32]*
  store [64 x i32]* %74, [64 x i32]** %7, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %187, %24
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %190

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 5
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %187

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 9
  br i1 %93, label %129, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PROFILE_ADVANCED, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %186

100:                                              ; preds = %94
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CONDOVER_ALL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %129, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 8
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %186

115:                                              ; preds = %106
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 5
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %129, label %119

119:                                              ; preds = %115
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 8
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %186

129:                                              ; preds = %119, %115, %100, %89
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load [64 x i32]*, [64 x i32]** %6, align 8
  br label %139

137:                                              ; preds = %129
  %138 = load [64 x i32]*, [64 x i32]** %7, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi [64 x i32]* [ %136, %135 ], [ %138, %137 ]
  %141 = bitcast [64 x i32]* %140 to i32**
  %142 = load [64 x i32]*, [64 x i32]** %7, align 8
  %143 = bitcast [64 x i32]* %142 to i32**
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ILACE_FRAME, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %139
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 9
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %154, %149, %139
  %165 = phi i1 [ false, %149 ], [ false, %139 ], [ %163, %154 ]
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ILACE_FRAME, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 9
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br label %181

181:                                              ; preds = %172, %164
  %182 = phi i1 [ false, %164 ], [ %180, %172 ]
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @vc1_h_overlap_filter(%struct.TYPE_8__* %130, i32** %141, i32** %143, i32 %166, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %119, %106, %94
  br label %187

187:                                              ; preds = %186, %88
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %75

190:                                              ; preds = %75
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @ILACE_FRAME, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %352

196:                                              ; preds = %190
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %348, %196
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %351

201:                                              ; preds = %197
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load i32, i32* %10, align 4
  %208 = and i32 %207, 2
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  br label %348

211:                                              ; preds = %206, %201
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %278

216:                                              ; preds = %211
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %219, 9
  br i1 %220, label %261, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @PROFILE_ADVANCED, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %278

227:                                              ; preds = %221
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CONDOVER_ALL, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %261, label %233

233:                                              ; preds = %227
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 8
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %236, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %278

243:                                              ; preds = %233
  %244 = load i32, i32* %10, align 4
  %245 = and i32 %244, 2
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %261, label %247

247:                                              ; preds = %243
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 8
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %252, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %250, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %247, %243, %227, %216
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load [64 x i32]*, [64 x i32]** %6, align 8
  br label %271

269:                                              ; preds = %261
  %270 = load [64 x i32]*, [64 x i32]** %4, align 8
  br label %271

271:                                              ; preds = %269, %267
  %272 = phi [64 x i32]* [ %268, %267 ], [ %270, %269 ]
  %273 = bitcast [64 x i32]* %272 to i32**
  %274 = load [64 x i32]*, [64 x i32]** %6, align 8
  %275 = bitcast [64 x i32]* %274 to i32**
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @vc1_v_overlap_filter(%struct.TYPE_8__* %262, i32** %273, i32** %275, i32 %276)
  br label %278

278:                                              ; preds = %271, %247, %233, %221, %211
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %284, 1
  %286 = icmp eq i32 %281, %285
  br i1 %286, label %287, label %347

287:                                              ; preds = %278
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = icmp sge i32 %290, 9
  br i1 %291, label %330, label %292

292:                                              ; preds = %287
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @PROFILE_ADVANCED, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %347

298:                                              ; preds = %292
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @CONDOVER_ALL, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %330, label %304

304:                                              ; preds = %298
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 8
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %347

313:                                              ; preds = %304
  %314 = load i32, i32* %10, align 4
  %315 = and i32 %314, 2
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %330, label %317

317:                                              ; preds = %313
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 8
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = sub nsw i32 %321, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %320, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %347

330:                                              ; preds = %317, %313, %298, %287
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %330
  %337 = load [64 x i32]*, [64 x i32]** %7, align 8
  br label %340

338:                                              ; preds = %330
  %339 = load [64 x i32]*, [64 x i32]** %5, align 8
  br label %340

340:                                              ; preds = %338, %336
  %341 = phi [64 x i32]* [ %337, %336 ], [ %339, %338 ]
  %342 = bitcast [64 x i32]* %341 to i32**
  %343 = load [64 x i32]*, [64 x i32]** %7, align 8
  %344 = bitcast [64 x i32]* %343 to i32**
  %345 = load i32, i32* %10, align 4
  %346 = call i32 @vc1_v_overlap_filter(%struct.TYPE_8__* %331, i32** %342, i32** %344, i32 %345)
  br label %347

347:                                              ; preds = %340, %317, %304, %292, %278
  br label %348

348:                                              ; preds = %347, %210
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %10, align 4
  br label %197

351:                                              ; preds = %197
  br label %352

352:                                              ; preds = %351, %190
  ret void
}

declare dso_local i32 @vc1_h_overlap_filter(%struct.TYPE_8__*, i32**, i32**, i32, i32, i32) #1

declare dso_local i32 @vc1_v_overlap_filter(%struct.TYPE_8__*, i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
