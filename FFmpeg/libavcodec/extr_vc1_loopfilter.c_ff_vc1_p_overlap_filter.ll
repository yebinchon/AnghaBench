; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_p_overlap_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_p_overlap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64**, i64*, i32***, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64*, i32*, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@ILACE_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_p_overlap_filter(%struct.TYPE_8__* %0) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  %13 = load i64, i64* @CONFIG_GRAY, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
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
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 7
  %41 = load i32***, i32**** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32**, i32*** %41, i64 %44
  %46 = load i32**, i32*** %45, align 8
  %47 = bitcast i32** %46 to [64 x i32]*
  store [64 x i32]* %47, [64 x i32]** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 7
  %50 = load i32***, i32**** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32**, i32*** %50, i64 %53
  %55 = load i32**, i32*** %54, align 8
  %56 = bitcast i32** %55 to [64 x i32]*
  store [64 x i32]* %56, [64 x i32]** %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load i32***, i32**** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32**, i32*** %59, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = bitcast i32** %64 to [64 x i32]*
  store [64 x i32]* %65, [64 x i32]** %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 7
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

75:                                               ; preds = %180, %24
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %183

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
  br label %180

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load i64**, i64*** %91, align 8
  %93 = getelementptr inbounds i64*, i64** %92, i64 0
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %94, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %179

105:                                              ; preds = %89
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  %108 = load i64**, i64*** %107, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 0
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %117, 1
  %119 = getelementptr inbounds i64, i64* %110, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %179

122:                                              ; preds = %105
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load [64 x i32]*, [64 x i32]** %6, align 8
  br label %132

130:                                              ; preds = %122
  %131 = load [64 x i32]*, [64 x i32]** %7, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi [64 x i32]* [ %129, %128 ], [ %131, %130 ]
  %134 = bitcast [64 x i32]* %133 to i32**
  %135 = load [64 x i32]*, [64 x i32]** %7, align 8
  %136 = bitcast [64 x i32]* %135 to i32**
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ILACE_FRAME, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %132
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %147, %142, %132
  %158 = phi i1 [ false, %142 ], [ false, %132 ], [ %156, %147 ]
  %159 = zext i1 %158 to i32
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ILACE_FRAME, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %157
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 6
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %165, %157
  %175 = phi i1 [ false, %157 ], [ %173, %165 ]
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @vc1_h_overlap_filter(%struct.TYPE_8__* %123, i32** %134, i32** %136, i32 %159, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %105, %89
  br label %180

180:                                              ; preds = %179, %88
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %75

183:                                              ; preds = %75
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ILACE_FRAME, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %352

189:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %348, %189
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %351

194:                                              ; preds = %190
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, 2
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  br label %348

204:                                              ; preds = %199, %194
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %279

209:                                              ; preds = %204
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 5
  %212 = load i64**, i64*** %211, align 8
  %213 = getelementptr inbounds i64*, i64** %212, i64 0
  %214 = load i64*, i64** %213, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %221, 2
  %223 = load i32, i32* %10, align 4
  %224 = icmp sgt i32 %223, 3
  %225 = zext i1 %224 to i32
  %226 = sext i32 %225 to i64
  %227 = add i64 %222, %226
  %228 = getelementptr inbounds i64, i64* %214, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %279

231:                                              ; preds = %209
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  %234 = load i64**, i64*** %233, align 8
  %235 = getelementptr inbounds i64*, i64** %234, i64 0
  %236 = load i64*, i64** %235, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = sub i64 %243, %251
  %253 = sub i64 %252, 2
  %254 = load i32, i32* %10, align 4
  %255 = icmp sgt i32 %254, 3
  %256 = zext i1 %255 to i32
  %257 = sext i32 %256 to i64
  %258 = add i64 %253, %257
  %259 = getelementptr inbounds i64, i64* %236, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %279

262:                                              ; preds = %231
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = load [64 x i32]*, [64 x i32]** %6, align 8
  br label %272

270:                                              ; preds = %262
  %271 = load [64 x i32]*, [64 x i32]** %4, align 8
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi [64 x i32]* [ %269, %268 ], [ %271, %270 ]
  %274 = bitcast [64 x i32]* %273 to i32**
  %275 = load [64 x i32]*, [64 x i32]** %6, align 8
  %276 = bitcast [64 x i32]* %275 to i32**
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @vc1_v_overlap_filter(%struct.TYPE_8__* %263, i32** %274, i32** %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %231, %209, %204
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %285, 1
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %288, label %347

288:                                              ; preds = %279
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 5
  %291 = load i64**, i64*** %290, align 8
  %292 = getelementptr inbounds i64*, i64** %291, i64 0
  %293 = load i64*, i64** %292, align 8
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 3
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i64, i64* %293, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %346

304:                                              ; preds = %288
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 5
  %307 = load i64**, i64*** %306, align 8
  %308 = getelementptr inbounds i64*, i64** %307, i64 0
  %309 = load i64*, i64** %308, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 3
  %312 = load i64*, i64** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %10, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = sub i64 %316, %324
  %326 = getelementptr inbounds i64, i64* %309, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %304
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %329
  %336 = load [64 x i32]*, [64 x i32]** %7, align 8
  br label %339

337:                                              ; preds = %329
  %338 = load [64 x i32]*, [64 x i32]** %5, align 8
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi [64 x i32]* [ %336, %335 ], [ %338, %337 ]
  %341 = bitcast [64 x i32]* %340 to i32**
  %342 = load [64 x i32]*, [64 x i32]** %7, align 8
  %343 = bitcast [64 x i32]* %342 to i32**
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @vc1_v_overlap_filter(%struct.TYPE_8__* %330, i32** %341, i32** %343, i32 %344)
  br label %346

346:                                              ; preds = %339, %304, %288
  br label %347

347:                                              ; preds = %346, %279
  br label %348

348:                                              ; preds = %347, %203
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %10, align 4
  br label %190

351:                                              ; preds = %190
  br label %352

352:                                              ; preds = %351, %183
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
