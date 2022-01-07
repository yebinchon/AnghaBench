; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_b_intfi_loop_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_loopfilter.c_ff_vc1_b_intfi_loop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32**, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@TOP_EDGE = common dso_local global i32 0, align 4
@BOTTOM_EDGE = common dso_local global i32 0, align 4
@LEFT_EDGE = common dso_local global i32 0, align 4
@RIGHT_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_b_intfi_loop_filter(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load i64, i64* @CONFIG_GRAY, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %14, %1
  %24 = phi i1 [ false, %1 ], [ %22, %14 ]
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 6
  store i32 %26, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %116, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 8
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 16, %39
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  store i32* %65, i32** %7, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %31
  %75 = load i32, i32* @TOP_EDGE, align 4
  br label %77

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  store i32 %78, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %112, %77
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 3
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 8
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %90, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 8, %98
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  br label %105

103:                                              ; preds = %83
  %104 = load i32*, i32** %5, align 8
  br label %105

105:                                              ; preds = %103, %87
  %106 = phi i32* [ %102, %87 ], [ %104, %103 ]
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @vc1_b_v_intfi_loop_filter(%struct.TYPE_8__* %84, i32* %106, i32* %107, i32* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %79

115:                                              ; preds = %79
  br label %116

116:                                              ; preds = %115, %23
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %188

126:                                              ; preds = %116
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 8
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %5, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32* %138, i32** %6, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32* %145, i32** %7, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 9
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %126
  %151 = load i32, i32* @TOP_EDGE, align 4
  %152 = load i32, i32* @BOTTOM_EDGE, align 4
  %153 = or i32 %151, %152
  br label %156

154:                                              ; preds = %126
  %155 = load i32, i32* @BOTTOM_EDGE, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = phi i32 [ %153, %150 ], [ %155, %154 ]
  store i32 %157, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %184, %156
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %158
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = load i32, i32* %9, align 4
  %165 = icmp sgt i32 %164, 3
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 8
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sub nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %169, i64 %172
  %174 = load i32*, i32** %173, align 8
  br label %177

175:                                              ; preds = %162
  %176 = load i32*, i32** %5, align 8
  br label %177

177:                                              ; preds = %175, %166
  %178 = phi i32* [ %174, %166 ], [ %176, %175 ]
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @vc1_b_v_intfi_loop_filter(%struct.TYPE_8__* %163, i32* %178, i32* %179, i32* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %158

187:                                              ; preds = %158
  br label %188

188:                                              ; preds = %187, %116
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %350, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 8
  %196 = load i32**, i32*** %195, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 16, %201
  %203 = sext i32 %202 to i64
  %204 = sub i64 0, %203
  %205 = getelementptr inbounds i32, i32* %198, i64 %204
  %206 = getelementptr inbounds i32, i32* %205, i64 -16
  store i32* %206, i32** %5, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = sub i64 %212, %215
  %217 = sub i64 %216, 1
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  store i32* %218, i32** %6, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %224, %227
  %229 = sub i64 %228, 1
  %230 = getelementptr inbounds i32, i32* %221, i64 %229
  store i32* %230, i32** %7, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %283

235:                                              ; preds = %193
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 1
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* @LEFT_EDGE, align 4
  br label %243

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i32 [ %241, %240 ], [ 0, %242 ]
  store i32 %244, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %279, %243
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %4, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %282

249:                                              ; preds = %245
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %251 = load i32, i32* %9, align 4
  %252 = icmp sgt i32 %251, 3
  br i1 %252, label %253, label %270

253:                                              ; preds = %249
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 8
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sub nsw i32 %257, 3
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %256, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = mul nsw i32 8, %264
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds i32, i32* %261, i64 %267
  %269 = getelementptr inbounds i32, i32* %268, i64 -8
  br label %272

270:                                              ; preds = %249
  %271 = load i32*, i32** %5, align 8
  br label %272

272:                                              ; preds = %270, %253
  %273 = phi i32* [ %269, %253 ], [ %271, %270 ]
  %274 = load i32*, i32** %6, align 8
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @vc1_b_h_intfi_loop_filter(%struct.TYPE_8__* %250, i32* %273, i32* %274, i32* %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %245

282:                                              ; preds = %245
  br label %283

283:                                              ; preds = %282, %193
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = icmp eq i64 %286, %291
  br i1 %292, label %293, label %349

293:                                              ; preds = %283
  %294 = load i32*, i32** %5, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 16
  store i32* %295, i32** %5, align 8
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %6, align 8
  %298 = load i32*, i32** %7, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %7, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %293
  %305 = load i32, i32* @LEFT_EDGE, align 4
  %306 = load i32, i32* @RIGHT_EDGE, align 4
  %307 = or i32 %305, %306
  br label %310

308:                                              ; preds = %293
  %309 = load i32, i32* @RIGHT_EDGE, align 4
  br label %310

310:                                              ; preds = %308, %304
  %311 = phi i32 [ %307, %304 ], [ %309, %308 ]
  store i32 %311, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %312

312:                                              ; preds = %345, %310
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %4, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %348

316:                                              ; preds = %312
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %318 = load i32, i32* %9, align 4
  %319 = icmp sgt i32 %318, 3
  br i1 %319, label %320, label %336

320:                                              ; preds = %316
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 8
  %323 = load i32**, i32*** %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sub nsw i32 %324, 3
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %323, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 8
  %332 = mul nsw i32 8, %331
  %333 = sext i32 %332 to i64
  %334 = sub i64 0, %333
  %335 = getelementptr inbounds i32, i32* %328, i64 %334
  br label %338

336:                                              ; preds = %316
  %337 = load i32*, i32** %5, align 8
  br label %338

338:                                              ; preds = %336, %320
  %339 = phi i32* [ %335, %320 ], [ %337, %336 ]
  %340 = load i32*, i32** %6, align 8
  %341 = load i32*, i32** %7, align 8
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @vc1_b_h_intfi_loop_filter(%struct.TYPE_8__* %317, i32* %339, i32* %340, i32* %341, i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %338
  %346 = load i32, i32* %9, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %9, align 4
  br label %312

348:                                              ; preds = %312
  br label %349

349:                                              ; preds = %348, %283
  br label %350

350:                                              ; preds = %349, %188
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = icmp eq i64 %353, %358
  br i1 %359, label %360, label %488

360:                                              ; preds = %350
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 8
  %363 = load i32**, i32*** %362, align 8
  %364 = getelementptr inbounds i32*, i32** %363, i64 0
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 -16
  store i32* %366, i32** %5, align 8
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = sub i64 %372, 1
  %374 = getelementptr inbounds i32, i32* %369, i64 %373
  store i32* %374, i32** %6, align 8
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = sub i64 %380, 1
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  store i32* %382, i32** %7, align 8
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %428

387:                                              ; preds = %360
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp eq i64 %390, 1
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  %393 = load i32, i32* @LEFT_EDGE, align 4
  br label %395

394:                                              ; preds = %387
  br label %395

395:                                              ; preds = %394, %392
  %396 = phi i32 [ %393, %392 ], [ 0, %394 ]
  store i32 %396, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %397

397:                                              ; preds = %424, %395
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %4, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %427

401:                                              ; preds = %397
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %403 = load i32, i32* %9, align 4
  %404 = icmp sgt i32 %403, 3
  br i1 %404, label %405, label %415

405:                                              ; preds = %401
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 8
  %408 = load i32**, i32*** %407, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sub nsw i32 %409, 3
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32*, i32** %408, i64 %411
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 -8
  br label %417

415:                                              ; preds = %401
  %416 = load i32*, i32** %5, align 8
  br label %417

417:                                              ; preds = %415, %405
  %418 = phi i32* [ %414, %405 ], [ %416, %415 ]
  %419 = load i32*, i32** %6, align 8
  %420 = load i32*, i32** %7, align 8
  %421 = load i32, i32* %8, align 4
  %422 = load i32, i32* %9, align 4
  %423 = call i32 @vc1_b_h_intfi_loop_filter(%struct.TYPE_8__* %402, i32* %418, i32* %419, i32* %420, i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %417
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %9, align 4
  br label %397

427:                                              ; preds = %397
  br label %428

428:                                              ; preds = %427, %360
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 8
  %435 = sub nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = icmp eq i64 %431, %436
  br i1 %437, label %438, label %487

438:                                              ; preds = %428
  %439 = load i32*, i32** %5, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 16
  store i32* %440, i32** %5, align 8
  %441 = load i32*, i32** %6, align 8
  %442 = getelementptr inbounds i32, i32* %441, i32 1
  store i32* %442, i32** %6, align 8
  %443 = load i32*, i32** %7, align 8
  %444 = getelementptr inbounds i32, i32* %443, i32 1
  store i32* %444, i32** %7, align 8
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %438
  %450 = load i32, i32* @LEFT_EDGE, align 4
  %451 = load i32, i32* @RIGHT_EDGE, align 4
  %452 = or i32 %450, %451
  br label %455

453:                                              ; preds = %438
  %454 = load i32, i32* @RIGHT_EDGE, align 4
  br label %455

455:                                              ; preds = %453, %449
  %456 = phi i32 [ %452, %449 ], [ %454, %453 ]
  store i32 %456, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %457

457:                                              ; preds = %483, %455
  %458 = load i32, i32* %9, align 4
  %459 = load i32, i32* %4, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %486

461:                                              ; preds = %457
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %463 = load i32, i32* %9, align 4
  %464 = icmp sgt i32 %463, 3
  br i1 %464, label %465, label %474

465:                                              ; preds = %461
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 8
  %468 = load i32**, i32*** %467, align 8
  %469 = load i32, i32* %9, align 4
  %470 = sub nsw i32 %469, 3
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32*, i32** %468, i64 %471
  %473 = load i32*, i32** %472, align 8
  br label %476

474:                                              ; preds = %461
  %475 = load i32*, i32** %5, align 8
  br label %476

476:                                              ; preds = %474, %465
  %477 = phi i32* [ %473, %465 ], [ %475, %474 ]
  %478 = load i32*, i32** %6, align 8
  %479 = load i32*, i32** %7, align 8
  %480 = load i32, i32* %8, align 4
  %481 = load i32, i32* %9, align 4
  %482 = call i32 @vc1_b_h_intfi_loop_filter(%struct.TYPE_8__* %462, i32* %477, i32* %478, i32* %479, i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %476
  %484 = load i32, i32* %9, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %9, align 4
  br label %457

486:                                              ; preds = %457
  br label %487

487:                                              ; preds = %486, %428
  br label %488

488:                                              ; preds = %487, %350
  ret void
}

declare dso_local i32 @vc1_b_v_intfi_loop_filter(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @vc1_b_h_intfi_loop_filter(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
