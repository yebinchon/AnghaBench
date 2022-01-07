; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framepool.c_ff_frame_pool_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framepool.c_ff_frame_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__**, i32**, %struct.TYPE_11__**, i32**, i32*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR8 = common dso_local global i32 0, align 4
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ff_frame_pool_get(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = call %struct.TYPE_15__* (...) @av_frame_alloc()
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %352

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %346 [
    i32 128, label %16
    i32 129, label %162
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %350

24:                                               ; preds = %16
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %107, %24
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %110

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %43
  br label %110

66:                                               ; preds = %43
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @av_buffer_pool_get(i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_11__*
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %78, i64 %80
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %84, i64 %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %66
  br label %350

91:                                               ; preds = %66
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 5
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  store i32* %100, i32** %106, align 8
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %40

110:                                              ; preds = %65, %40
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FF_PSEUDOPAL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %117, %110
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @AV_PIX_FMT_BGR8, align 4
  br label %136

132:                                              ; preds = %124
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %132, %130
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ]
  store i32 %137, i32* %7, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 5
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 @av_assert0(i32 %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 5
  %148 = load i32**, i32*** %147, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @avpriv_set_systematic_pal2(i32* %150, i32 %151)
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %136
  br label %350

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155, %117
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 5
  %159 = load i32**, i32*** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  store i32** %159, i32*** %161, align 8
  br label %348

162:                                              ; preds = %12
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %182, i32* %186, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %225

192:                                              ; preds = %162
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @av_mallocz_array(i32 %195, i32 8)
  %197 = bitcast i8* %196 to i32**
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  store i32** %197, i32*** %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @av_mallocz_array(i32 %209, i32 8)
  %211 = bitcast i8* %210 to %struct.TYPE_12__**
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  store %struct.TYPE_12__** %211, %struct.TYPE_12__*** %213, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 3
  %216 = load i32**, i32*** %215, align 8
  %217 = icmp ne i32** %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %192
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %220, align 8
  %222 = icmp ne %struct.TYPE_12__** %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %218, %192
  br label %350

224:                                              ; preds = %218
  br label %237

225:                                              ; preds = %162
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 5
  %228 = load i32**, i32*** %227, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  store i32** %228, i32*** %230, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @av_assert0(i32 %235)
  br label %237

237:                                              ; preds = %225, %224
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %291, %237
  %239 = load i32, i32* %4, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %244 = call i32 @FFMIN(i32 %242, i32 %243)
  %245 = icmp slt i32 %239, %244
  br i1 %245, label %246, label %294

246:                                              ; preds = %238
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @av_buffer_pool_get(i32 %251)
  %253 = bitcast i8* %252 to %struct.TYPE_11__*
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 4
  %256 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %256, i64 %258
  store %struct.TYPE_11__* %253, %struct.TYPE_11__** %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %262, i64 %264
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = icmp ne %struct.TYPE_11__* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %246
  br label %350

269:                                              ; preds = %246
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %272, i64 %274
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 5
  %281 = load i32**, i32*** %280, align 8
  %282 = load i32, i32* %4, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  store i32* %278, i32** %284, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 3
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  store i32* %278, i32** %290, align 8
  br label %291

291:                                              ; preds = %269
  %292 = load i32, i32* %4, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %4, align 4
  br label %238

294:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  br label %295

295:                                              ; preds = %342, %294
  %296 = load i32, i32* %4, align 4
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %345

301:                                              ; preds = %295
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = call i8* @av_buffer_pool_get(i32 %306)
  %308 = bitcast i8* %307 to %struct.TYPE_12__*
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %310, align 8
  %312 = load i32, i32* %4, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %311, i64 %313
  store %struct.TYPE_12__* %308, %struct.TYPE_12__** %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %316, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %317, i64 %319
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %320, align 8
  %322 = icmp ne %struct.TYPE_12__* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %301
  br label %350

324:                                              ; preds = %301
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %326, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %327, i64 %329
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 3
  %336 = load i32**, i32*** %335, align 8
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %336, i64 %340
  store i32* %333, i32** %341, align 8
  br label %342

342:                                              ; preds = %324
  %343 = load i32, i32* %4, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %4, align 4
  br label %295

345:                                              ; preds = %295
  br label %348

346:                                              ; preds = %12
  %347 = call i32 @av_assert0(i32 0)
  br label %348

348:                                              ; preds = %346, %345, %156
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %349, %struct.TYPE_15__** %2, align 8
  br label %352

350:                                              ; preds = %323, %268, %223, %154, %90, %23
  %351 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %352

352:                                              ; preds = %350, %348, %11
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %353
}

declare dso_local %struct.TYPE_15__* @av_frame_alloc(...) #1

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @av_buffer_pool_get(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avpriv_set_systematic_pal2(i32*, i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
