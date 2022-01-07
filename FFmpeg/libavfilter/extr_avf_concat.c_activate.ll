; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_concat.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %75, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ff_outlink_get_status(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %75

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %68, %32
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ff_inlink_set_status(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %301

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %34

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %125, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %87
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ff_inlink_consume_frame(i32 %104, i32** %5)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %301

110:                                              ; preds = %93
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = call i32 @ff_filter_set_ready(%struct.TYPE_11__* %114, i32 10)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %119, %120
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @push_frame(%struct.TYPE_11__* %116, i32 %121, i32* %122)
  store i32 %123, i32* %2, align 4
  br label %301

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %87

128:                                              ; preds = %87
  br label %129

129:                                              ; preds = %128, %78
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ult i32 %132, %135
  br i1 %136, label %137, label %210

137:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %206, %137
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ult i32 %139, %142
  br i1 %143, label %144, label %209

144:                                              ; preds = %138
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %150, %151
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ff_inlink_acknowledge_status(i32 %155, i32* %9, i32* %10)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %205

159:                                              ; preds = %144
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %163, %164
  %166 = call i32 @close_input(%struct.TYPE_11__* %160, i32 %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add i32 %169, %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp uge i32 %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %159
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @ff_outlink_set_status(i32 %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %178, %159
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = call i32 @flush_segment(%struct.TYPE_11__* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %2, align 4
  br label %301

201:                                              ; preds = %194
  br label %202

202:                                              ; preds = %201, %189
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %204 = call i32 @ff_filter_set_ready(%struct.TYPE_11__* %203, i32 10)
  store i32 0, i32* %2, align 4
  br label %301

205:                                              ; preds = %144
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %138

209:                                              ; preds = %138
  br label %210

210:                                              ; preds = %209, %129
  %211 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %211, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %296, %210
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %213, %216
  br i1 %217, label %218, label %299

218:                                              ; preds = %212
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @ff_outlink_frame_wanted(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %295

228:                                              ; preds = %218
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = add i32 %234, %235
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %281

242:                                              ; preds = %228
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %277, %242
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ult i32 %244, %247
  br i1 %248, label %249, label %280

249:                                              ; preds = %243
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %255, %256
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %249
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = add i32 %269, %270
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %266, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ff_inlink_request_frame(i32 %274)
  br label %276

276:                                              ; preds = %263, %249
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %243

280:                                              ; preds = %243
  store i32 0, i32* %2, align 4
  br label %301

281:                                              ; preds = %228
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = add i32 %287, %288
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %284, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ff_inlink_request_frame(i32 %292)
  store i32 0, i32* %8, align 4
  br label %294

294:                                              ; preds = %281
  br label %295

295:                                              ; preds = %294, %218
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %6, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %6, align 4
  br label %212

299:                                              ; preds = %212
  %300 = load i32, i32* %8, align 4
  store i32 %300, i32* %2, align 4
  br label %301

301:                                              ; preds = %299, %280, %202, %199, %113, %108, %50
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @ff_outlink_get_status(i32) #1

declare dso_local i32 @ff_inlink_set_status(i32, i32) #1

declare dso_local i32 @ff_inlink_consume_frame(i32, i32**) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @push_frame(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @ff_inlink_acknowledge_status(i32, i32*, i32*) #1

declare dso_local i32 @close_input(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ff_outlink_set_status(i32, i32, i32) #1

declare dso_local i32 @flush_segment(%struct.TYPE_11__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32) #1

declare dso_local i32 @ff_inlink_request_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
