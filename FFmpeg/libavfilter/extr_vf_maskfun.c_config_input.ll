; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskfun.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskfun.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32, i32, i32, i64, i64, %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32** }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@maskfun8 = common dso_local global i32 0, align 4
@getsum8 = common dso_local global i32 0, align 4
@maskfun16 = common dso_local global i32 0, align 4
@getsum16 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %5, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @av_pix_fmt_count_planes(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @av_image_fill_linesizes(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %348

47:                                               ; preds = %1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @AV_CEIL_RSHIFT(i32 %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %59, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %70, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @AV_CEIL_RSHIFT(i32 %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %84, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %95, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 1, %114
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @FFMIN(i32 %121, i32 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %139

132:                                              ; preds = %47
  %133 = load i32, i32* @maskfun8, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 11
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @getsum8, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 4
  br label %146

139:                                              ; preds = %47
  %140 = load i32, i32* @maskfun16, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 11
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @getsum16, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 10
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %132
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_13__* %147, i32 %150, i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 8
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = icmp ne %struct.TYPE_15__* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %146
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %348

164:                                              ; preds = %146
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 8
  br i1 %168, label %169, label %229

169:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %225, %169
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %228

176:                                              ; preds = %170
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  store i32* %185, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %221, %176
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %187, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %186
  %197 = load i32*, i32** %11, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @memset(i32* %197, i32 %200, i32 %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %11, align 8
  br label %221

221:                                              ; preds = %196
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %186

224:                                              ; preds = %186
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %170

228:                                              ; preds = %170
  br label %300

229:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %296, %229
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %299

236:                                              ; preds = %230
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32**, i32*** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  store i32* %245, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %246

246:                                              ; preds = %292, %236
  %247 = load i32, i32* %15, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %247, %254
  br i1 %255, label %256, label %295

256:                                              ; preds = %246
  store i32 0, i32* %16, align 4
  br label %257

257:                                              ; preds = %275, %256
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %258, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %257
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 8
  %271 = load i32*, i32** %14, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %270, i32* %274, align 4
  br label %275

275:                                              ; preds = %267
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %16, align 4
  br label %257

278:                                              ; preds = %257
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sdiv i32 %287, 2
  %289 = load i32*, i32** %14, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %14, align 8
  br label %292

292:                                              ; preds = %278
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %15, align 4
  br label %246

295:                                              ; preds = %246
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %230

299:                                              ; preds = %230
  br label %300

300:                                              ; preds = %299, %228
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 7
  store i64 0, i64* %302, align 8
  store i32 0, i32* %17, align 4
  br label %303

303:                                              ; preds = %344, %300
  %304 = load i32, i32* %17, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp slt i32 %304, %307
  br i1 %308, label %309, label %347

309:                                              ; preds = %303
  %310 = load i32, i32* %17, align 4
  %311 = shl i32 1, %310
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = and i32 %311, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %309
  br label %344

318:                                              ; preds = %309
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %322, %329
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 %330, %337
  %339 = sext i32 %338 to i64
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 7
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, %339
  store i64 %343, i64* %341, align 8
  br label %344

344:                                              ; preds = %318, %317
  %345 = load i32, i32* %17, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %17, align 4
  br label %303

347:                                              ; preds = %303
  store i32 0, i32* %2, align 4
  br label %348

348:                                              ; preds = %347, %161, %45
  %349 = load i32, i32* %2, align 4
  ret i32 %349
}

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_image_fill_linesizes(i32, i32, i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local %struct.TYPE_15__* @ff_get_video_buffer(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
