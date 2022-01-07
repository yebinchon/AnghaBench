; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__**, %struct.TYPE_11__**, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@in_lowpass_pix_fmts = common dso_local global i32* null, align 8
@in_flat_pix_fmts = common dso_local global i32* null, align 8
@in_color_pix_fmts = common dso_local global i32* null, align 8
@AVERROR_BUG = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@out_gray8_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_gray9_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_gray10_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_gray12_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_rgb8_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_rgb9_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_rgb10_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_rgb12_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_yuv8_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_yuv9_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_yuv10_lowpass_pix_fmts = common dso_local global i32* null, align 8
@out_yuv12_lowpass_pix_fmts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %32, i64 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29, %1
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %333

43:                                               ; preds = %29
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %53 [
    i32 130, label %47
    i32 133, label %49
    i32 129, label %49
    i32 128, label %49
    i32 134, label %49
    i32 131, label %49
    i32 135, label %51
    i32 132, label %51
  ]

47:                                               ; preds = %43
  %48 = load i32*, i32** @in_lowpass_pix_fmts, align 8
  store i32* %48, i32** %6, align 8
  br label %55

49:                                               ; preds = %43, %43, %43, %43, %43
  %50 = load i32*, i32** @in_flat_pix_fmts, align 8
  store i32* %50, i32** %6, align 8
  br label %55

51:                                               ; preds = %43, %43
  %52 = load i32*, i32** @in_color_pix_fmts, align 8
  store i32* %52, i32** %6, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %54, i32* %2, align 4
  br label %333

55:                                               ; preds = %51, %49, %47
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %58, i64 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %55
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ff_make_format_list(i32* %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %69, i64 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = call i32 @ff_formats_ref(i32 %66, %struct.TYPE_16__** %72)
  store i32 %73, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %2, align 4
  br label %333

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %81, i64 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %9, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %88, i64 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %10, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %97)
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %7, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %103)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %8, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %13, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %78
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131, %78
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %2, align 4
  br label %333

138:                                              ; preds = %131
  store i32 1, i32* %14, align 4
  br label %139

139:                                              ; preds = %174, %138
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %177

145:                                              ; preds = %139
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %152)
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %154, %159
  br i1 %160, label %170, label %161

161:                                              ; preds = %145
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %162, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %161, %145
  %171 = load i32, i32* @EAGAIN, align 4
  %172 = call i32 @AVERROR(i32 %171)
  store i32 %172, i32* %2, align 4
  br label %333

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %139

177:                                              ; preds = %139
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 130
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load i32, i32* %16, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32*, i32** @out_gray8_lowpass_pix_fmts, align 8
  store i32* %189, i32** %5, align 8
  br label %319

190:                                              ; preds = %185, %182, %177
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 130
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load i32, i32* %16, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 9
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32*, i32** @out_gray9_lowpass_pix_fmts, align 8
  store i32* %202, i32** %5, align 8
  br label %318

203:                                              ; preds = %198, %195, %190
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 130
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load i32, i32* %16, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  %213 = icmp eq i32 %212, 10
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i32*, i32** @out_gray10_lowpass_pix_fmts, align 8
  store i32* %215, i32** %5, align 8
  br label %317

216:                                              ; preds = %211, %208, %203
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 130
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load i32, i32* %16, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32, i32* %11, align 4
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32*, i32** @out_gray12_lowpass_pix_fmts, align 8
  store i32* %228, i32** %5, align 8
  br label %316

229:                                              ; preds = %224, %221, %216
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* %16, align 4
  %237 = icmp sgt i32 %236, 2
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32*, i32** @out_rgb8_lowpass_pix_fmts, align 8
  store i32* %239, i32** %5, align 8
  br label %315

240:                                              ; preds = %235, %232, %229
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 9
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* %16, align 4
  %248 = icmp sgt i32 %247, 2
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32*, i32** @out_rgb9_lowpass_pix_fmts, align 8
  store i32* %250, i32** %5, align 8
  br label %314

251:                                              ; preds = %246, %243, %240
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load i32, i32* %11, align 4
  %256 = icmp eq i32 %255, 10
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32, i32* %16, align 4
  %259 = icmp sgt i32 %258, 2
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i32*, i32** @out_rgb10_lowpass_pix_fmts, align 8
  store i32* %261, i32** %5, align 8
  br label %313

262:                                              ; preds = %257, %254, %251
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32, i32* %11, align 4
  %267 = icmp eq i32 %266, 12
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i32, i32* %16, align 4
  %270 = icmp sgt i32 %269, 2
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32*, i32** @out_rgb12_lowpass_pix_fmts, align 8
  store i32* %272, i32** %5, align 8
  br label %312

273:                                              ; preds = %268, %265, %262
  %274 = load i32, i32* %11, align 4
  %275 = icmp eq i32 %274, 8
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32, i32* %16, align 4
  %278 = icmp sgt i32 %277, 2
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32*, i32** @out_yuv8_lowpass_pix_fmts, align 8
  store i32* %280, i32** %5, align 8
  br label %311

281:                                              ; preds = %276, %273
  %282 = load i32, i32* %11, align 4
  %283 = icmp eq i32 %282, 9
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i32, i32* %16, align 4
  %286 = icmp sgt i32 %285, 2
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = load i32*, i32** @out_yuv9_lowpass_pix_fmts, align 8
  store i32* %288, i32** %5, align 8
  br label %310

289:                                              ; preds = %284, %281
  %290 = load i32, i32* %11, align 4
  %291 = icmp eq i32 %290, 10
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load i32, i32* %16, align 4
  %294 = icmp sgt i32 %293, 2
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i32*, i32** @out_yuv10_lowpass_pix_fmts, align 8
  store i32* %296, i32** %5, align 8
  br label %309

297:                                              ; preds = %292, %289
  %298 = load i32, i32* %11, align 4
  %299 = icmp eq i32 %298, 12
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i32, i32* %16, align 4
  %302 = icmp sgt i32 %301, 2
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32*, i32** @out_yuv12_lowpass_pix_fmts, align 8
  store i32* %304, i32** %5, align 8
  br label %308

305:                                              ; preds = %300, %297
  %306 = load i32, i32* @EAGAIN, align 4
  %307 = call i32 @AVERROR(i32 %306)
  store i32 %307, i32* %2, align 4
  br label %333

308:                                              ; preds = %303
  br label %309

309:                                              ; preds = %308, %295
  br label %310

310:                                              ; preds = %309, %287
  br label %311

311:                                              ; preds = %310, %279
  br label %312

312:                                              ; preds = %311, %271
  br label %313

313:                                              ; preds = %312, %260
  br label %314

314:                                              ; preds = %313, %249
  br label %315

315:                                              ; preds = %314, %238
  br label %316

316:                                              ; preds = %315, %227
  br label %317

317:                                              ; preds = %316, %214
  br label %318

318:                                              ; preds = %317, %201
  br label %319

319:                                              ; preds = %318, %188
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 @ff_make_format_list(i32* %320)
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %324, i64 0
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 0
  %328 = call i32 @ff_formats_ref(i32 %321, %struct.TYPE_16__** %327)
  store i32 %328, i32* %15, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %319
  %331 = load i32, i32* %15, align 4
  store i32 %331, i32* %2, align 4
  br label %333

332:                                              ; preds = %319
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %332, %330, %305, %170, %135, %75, %53, %40
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(i32, %struct.TYPE_16__**) #1

declare dso_local i32 @ff_make_format_list(i32*) #1

declare dso_local %struct.TYPE_15__* @av_pix_fmt_desc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
