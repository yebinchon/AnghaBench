; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_32__*, %struct.TYPE_36__**, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i32 (%struct.TYPE_27__*, i32, %struct.TYPE_34__*, i32*, i32)* }
%struct.TYPE_34__ = type { i32, i32, i32, %struct.TYPE_35__*, %struct.TYPE_35__* }
%struct.TYPE_33__ = type { i32, i32, i32*, i32, i32, i32, i64, i32, i32, i32 (%struct.TYPE_33__*, %struct.TYPE_35__*)*, i64, i32, %struct.TYPE_31__*, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_35__ = type { i32*, i64*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@PARADE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_35__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_34__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %6, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  store %struct.TYPE_33__* %24, %struct.TYPE_33__** %7, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %27, i64 0
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  store %struct.TYPE_36__* %29, %struct.TYPE_36__** %8, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_35__* @ff_get_video_buffer(%struct.TYPE_36__* %30, i32 %33, i32 %36)
  store %struct.TYPE_35__* %37, %struct.TYPE_35__** %9, align 8
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %39 = icmp ne %struct.TYPE_35__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = call i32 @av_frame_free(%struct.TYPE_35__** %5)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %591

44:                                               ; preds = %2
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %197, %44
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %200

59:                                               ; preds = %53
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %62, 8
  br i1 %63, label %64, label %121

64:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %117, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %65
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 13
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %74, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 13
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %90, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %87, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %86, %104
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(i64 %105, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %71
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %65

120:                                              ; preds = %65
  br label %196

121:                                              ; preds = %59
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 256
  store i32 %125, i32* %13, align 4
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 13
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %128, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  store i32* %141, i32** %14, align 8
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %192, %121
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %195

148:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %169, %148
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %149

172:                                              ; preds = %149
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 13
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %175, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %187, 2
  %189 = load i32*, i32** %14, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %14, align 8
  br label %192

192:                                              ; preds = %172
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %142

195:                                              ; preds = %142
  br label %196

196:                                              ; preds = %195, %120
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %53

200:                                              ; preds = %53
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %577, %200
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %580

207:                                              ; preds = %201
  %208 = load i32, i32* %12, align 4
  %209 = shl i32 1, %208
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %576

215:                                              ; preds = %207
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 12
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %15, align 4
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PARADE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %260

231:                                              ; preds = %215
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 10
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %237, %241
  br label %244

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %236
  %245 = phi i32 [ %242, %236 ], [ 0, %243 ]
  store i32 %245, i32* %18, align 4
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 10
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %258

251:                                              ; preds = %244
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %252, %256
  br label %258

258:                                              ; preds = %251, %250
  %259 = phi i32 [ 0, %250 ], [ %257, %251 ]
  store i32 %259, i32* %17, align 4
  br label %305

260:                                              ; preds = %215
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 10
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %260
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = mul nsw i32 %266, %270
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  %276 = xor i1 %275, true
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = mul nsw i32 %271, %278
  br label %281

280:                                              ; preds = %260
  br label %281

281:                                              ; preds = %280, %265
  %282 = phi i32 [ %279, %265 ], [ 0, %280 ]
  store i32 %282, i32* %17, align 4
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 10
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  br label %303

288:                                              ; preds = %281
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %10, align 4
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 %289, %293
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  %299 = xor i1 %298, true
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  %302 = mul nsw i32 %294, %301
  br label %303

303:                                              ; preds = %288, %287
  %304 = phi i32 [ 0, %287 ], [ %302, %288 ]
  store i32 %304, i32* %18, align 4
  br label %305

305:                                              ; preds = %303, %258
  %306 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 4
  store %struct.TYPE_35__* %306, %struct.TYPE_35__** %307, align 8
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 3
  store %struct.TYPE_35__* %308, %struct.TYPE_35__** %309, align 8
  %310 = load i32, i32* %12, align 4
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i32 %310, i32* %311, align 8
  %312 = load i32, i32* %17, align 4
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i32 %312, i32* %313, align 4
  %314 = load i32, i32* %18, align 4
  %315 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 2
  store i32 %314, i32* %315, align 8
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 0
  %320 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_34__*, i32*, i32)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_34__*, i32*, i32)** %319, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %322 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %322, i32 0, i32 11
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %326 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_27__* %325)
  %327 = call i32 %320(%struct.TYPE_27__* %321, i32 %324, %struct.TYPE_34__* %16, i32* null, i32 %326)
  %328 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  switch i32 %330, label %575 [
    i32 135, label %331
    i32 133, label %331
    i32 132, label %331
    i32 130, label %331
    i32 131, label %369
    i32 134, label %447
    i32 129, label %447
    i32 128, label %447
  ]

331:                                              ; preds = %305, %305, %305, %305
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp sle i32 %334, 8
  br i1 %335, label %336, label %352

336:                                              ; preds = %331
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %15, align 4
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %341, i32 0, i32 10
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %336
  %346 = load i32, i32* %18, align 4
  br label %349

347:                                              ; preds = %336
  %348 = load i32, i32* %17, align 4
  br label %349

349:                                              ; preds = %347, %345
  %350 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %351 = call i32 @envelope(%struct.TYPE_33__* %337, %struct.TYPE_35__* %338, i32 %339, i32 %340, i32 %350)
  br label %368

352:                                              ; preds = %331
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* %15, align 4
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 10
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %352
  %362 = load i32, i32* %18, align 4
  br label %365

363:                                              ; preds = %352
  %364 = load i32, i32* %17, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = call i32 @envelope16(%struct.TYPE_33__* %353, %struct.TYPE_35__* %354, i32 %355, i32 %356, i32 %366)
  br label %368

368:                                              ; preds = %365, %349
  br label %575

369:                                              ; preds = %305
  %370 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp sle i32 %372, 8
  br i1 %373, label %374, label %410

374:                                              ; preds = %369
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %15, align 4
  %379 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %379, i32 0, i32 10
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %374
  %384 = load i32, i32* %18, align 4
  br label %387

385:                                              ; preds = %374
  %386 = load i32, i32* %17, align 4
  br label %387

387:                                              ; preds = %385, %383
  %388 = phi i32 [ %384, %383 ], [ %386, %385 ]
  %389 = call i32 @envelope(%struct.TYPE_33__* %375, %struct.TYPE_35__* %376, i32 %377, i32 %378, i32 %388)
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %391 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* %15, align 4
  %394 = add nsw i32 %393, 1
  %395 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 4
  %398 = srem i32 %394, %397
  %399 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %399, i32 0, i32 10
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %387
  %404 = load i32, i32* %18, align 4
  br label %407

405:                                              ; preds = %387
  %406 = load i32, i32* %17, align 4
  br label %407

407:                                              ; preds = %405, %403
  %408 = phi i32 [ %404, %403 ], [ %406, %405 ]
  %409 = call i32 @envelope(%struct.TYPE_33__* %390, %struct.TYPE_35__* %391, i32 %392, i32 %398, i32 %408)
  br label %446

410:                                              ; preds = %369
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %412 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* %15, align 4
  %415 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %415, i32 0, i32 10
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %410
  %420 = load i32, i32* %18, align 4
  br label %423

421:                                              ; preds = %410
  %422 = load i32, i32* %17, align 4
  br label %423

423:                                              ; preds = %421, %419
  %424 = phi i32 [ %420, %419 ], [ %422, %421 ]
  %425 = call i32 @envelope16(%struct.TYPE_33__* %411, %struct.TYPE_35__* %412, i32 %413, i32 %414, i32 %424)
  %426 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %427 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %428 = load i32, i32* %15, align 4
  %429 = load i32, i32* %15, align 4
  %430 = add nsw i32 %429, 1
  %431 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = srem i32 %430, %433
  %435 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %435, i32 0, i32 10
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %423
  %440 = load i32, i32* %18, align 4
  br label %443

441:                                              ; preds = %423
  %442 = load i32, i32* %17, align 4
  br label %443

443:                                              ; preds = %441, %439
  %444 = phi i32 [ %440, %439 ], [ %442, %441 ]
  %445 = call i32 @envelope16(%struct.TYPE_33__* %426, %struct.TYPE_35__* %427, i32 %428, i32 %434, i32 %444)
  br label %446

446:                                              ; preds = %443, %407
  br label %575

447:                                              ; preds = %305, %305, %305
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp sle i32 %450, 8
  br i1 %451, label %452, label %513

452:                                              ; preds = %447
  %453 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %454 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %455 = load i32, i32* %15, align 4
  %456 = load i32, i32* %15, align 4
  %457 = add nsw i32 %456, 0
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = srem i32 %457, %460
  %462 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %462, i32 0, i32 10
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %452
  %467 = load i32, i32* %18, align 4
  br label %470

468:                                              ; preds = %452
  %469 = load i32, i32* %17, align 4
  br label %470

470:                                              ; preds = %468, %466
  %471 = phi i32 [ %467, %466 ], [ %469, %468 ]
  %472 = call i32 @envelope(%struct.TYPE_33__* %453, %struct.TYPE_35__* %454, i32 %455, i32 %461, i32 %471)
  %473 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %474 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %475 = load i32, i32* %15, align 4
  %476 = load i32, i32* %15, align 4
  %477 = add nsw i32 %476, 1
  %478 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 4
  %481 = srem i32 %477, %480
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %482, i32 0, i32 10
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %470
  %487 = load i32, i32* %18, align 4
  br label %490

488:                                              ; preds = %470
  %489 = load i32, i32* %17, align 4
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi i32 [ %487, %486 ], [ %489, %488 ]
  %492 = call i32 @envelope(%struct.TYPE_33__* %473, %struct.TYPE_35__* %474, i32 %475, i32 %481, i32 %491)
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %494 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %495 = load i32, i32* %15, align 4
  %496 = load i32, i32* %15, align 4
  %497 = add nsw i32 %496, 2
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %498, i32 0, i32 4
  %500 = load i32, i32* %499, align 4
  %501 = srem i32 %497, %500
  %502 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %502, i32 0, i32 10
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %490
  %507 = load i32, i32* %18, align 4
  br label %510

508:                                              ; preds = %490
  %509 = load i32, i32* %17, align 4
  br label %510

510:                                              ; preds = %508, %506
  %511 = phi i32 [ %507, %506 ], [ %509, %508 ]
  %512 = call i32 @envelope(%struct.TYPE_33__* %493, %struct.TYPE_35__* %494, i32 %495, i32 %501, i32 %511)
  br label %574

513:                                              ; preds = %447
  %514 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %515 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %516 = load i32, i32* %15, align 4
  %517 = load i32, i32* %15, align 4
  %518 = add nsw i32 %517, 0
  %519 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 4
  %521 = load i32, i32* %520, align 4
  %522 = srem i32 %518, %521
  %523 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %523, i32 0, i32 10
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %513
  %528 = load i32, i32* %18, align 4
  br label %531

529:                                              ; preds = %513
  %530 = load i32, i32* %17, align 4
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i32 [ %528, %527 ], [ %530, %529 ]
  %533 = call i32 @envelope16(%struct.TYPE_33__* %514, %struct.TYPE_35__* %515, i32 %516, i32 %522, i32 %532)
  %534 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %535 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %536 = load i32, i32* %15, align 4
  %537 = load i32, i32* %15, align 4
  %538 = add nsw i32 %537, 1
  %539 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 4
  %542 = srem i32 %538, %541
  %543 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %543, i32 0, i32 10
  %545 = load i64, i64* %544, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %531
  %548 = load i32, i32* %18, align 4
  br label %551

549:                                              ; preds = %531
  %550 = load i32, i32* %17, align 4
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi i32 [ %548, %547 ], [ %550, %549 ]
  %553 = call i32 @envelope16(%struct.TYPE_33__* %534, %struct.TYPE_35__* %535, i32 %536, i32 %542, i32 %552)
  %554 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %555 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %556 = load i32, i32* %15, align 4
  %557 = load i32, i32* %15, align 4
  %558 = add nsw i32 %557, 2
  %559 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 4
  %562 = srem i32 %558, %561
  %563 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %563, i32 0, i32 10
  %565 = load i64, i64* %564, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %551
  %568 = load i32, i32* %18, align 4
  br label %571

569:                                              ; preds = %551
  %570 = load i32, i32* %17, align 4
  br label %571

571:                                              ; preds = %569, %567
  %572 = phi i32 [ %568, %567 ], [ %570, %569 ]
  %573 = call i32 @envelope16(%struct.TYPE_33__* %554, %struct.TYPE_35__* %555, i32 %556, i32 %562, i32 %572)
  br label %574

574:                                              ; preds = %571, %510
  br label %575

575:                                              ; preds = %305, %574, %446, %368
  br label %576

576:                                              ; preds = %575, %207
  br label %577

577:                                              ; preds = %576
  %578 = load i32, i32* %12, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %12, align 4
  br label %201

580:                                              ; preds = %201
  %581 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %582 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %581, i32 0, i32 9
  %583 = load i32 (%struct.TYPE_33__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_35__*)** %582, align 8
  %584 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %585 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %586 = call i32 %583(%struct.TYPE_33__* %584, %struct.TYPE_35__* %585)
  %587 = call i32 @av_frame_free(%struct.TYPE_35__** %5)
  %588 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %589 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %590 = call i32 @ff_filter_frame(%struct.TYPE_36__* %588, %struct.TYPE_35__* %589)
  store i32 %590, i32* %3, align 4
  br label %591

591:                                              ; preds = %580, %40
  %592 = load i32, i32* %3, align 4
  ret i32 %592
}

declare dso_local %struct.TYPE_35__* @ff_get_video_buffer(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_35__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_27__*) #1

declare dso_local i32 @envelope(%struct.TYPE_33__*, %struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i32 @envelope16(%struct.TYPE_33__*, %struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
