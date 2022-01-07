; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_yop.c_yop_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_yop.c_yop_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32*, i32, i32* }
%struct.TYPE_15__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Packet too small.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"frame is too odd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @yop_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yop_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %11, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 3, %31
  %33 = add nsw i32 4, %32
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %36, i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %5, align 4
  br label %289

40:                                               ; preds = %4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = call i32 @ff_reget_buffer(%struct.TYPE_17__* %41, %struct.TYPE_16__* %42, i32 0)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %5, align 4
  br label %289

47:                                               ; preds = %40
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AVPALETTE_SIZE, align 4
  %59 = call i32 @memset(i32 %57, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 7
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %60
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %101, i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %5, align 4
  br label %289

106:                                              ; preds = %60
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %13, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %19, align 8
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %172, %106
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %179

127:                                              ; preds = %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 18
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 10
  %140 = or i32 %133, %139
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 2
  %147 = or i32 %140, %146
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 6
  %162 = and i32 %161, 197379
  %163 = or i32 -16777216, %162
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %163
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %127
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32* %178, i32** %176, align 8
  br label %121

179:                                              ; preds = %121
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  store i32 1, i32* %181, align 8
  store i32 0, i32* %18, align 4
  br label %182

182:                                              ; preds = %272, %179
  %183 = load i32, i32* %18, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %275

188:                                              ; preds = %182
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %256, %188
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %259

195:                                              ; preds = %189
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = ptrtoint i32* %198 to i64
  %203 = ptrtoint i32* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = icmp sge i64 %205, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %195
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %213 = load i32, i32* @AV_LOG_ERROR, align 4
  %214 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %212, i32 %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %215, i32* %5, align 4
  br label %289

216:                                              ; preds = %195
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %218 = call i32 @yop_get_next_nibble(%struct.TYPE_14__* %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 15
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @yop_paint_block(%struct.TYPE_14__* %222, i32 %227, i32 %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = load i32, i32* %15, align 4
  store i32 %233, i32* %5, align 4
  br label %289

234:                                              ; preds = %221
  br label %251

235:                                              ; preds = %216
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %237 = call i32 @yop_get_next_nibble(%struct.TYPE_14__* %236)
  store i32 %237, i32* %12, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @yop_copy_previous_block(%struct.TYPE_14__* %238, i32 %243, i32 %244)
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %235
  %249 = load i32, i32* %15, align 4
  store i32 %249, i32* %5, align 4
  br label %289

250:                                              ; preds = %235
  br label %251

251:                                              ; preds = %250, %234
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 2
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %251
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 2
  store i32 %258, i32* %17, align 4
  br label %189

259:                                              ; preds = %189
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 2, %264
  %266 = load i32, i32* %17, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %259
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %273, 2
  store i32 %274, i32* %18, align 4
  br label %182

275:                                              ; preds = %182
  %276 = load i8*, i8** %7, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 6
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %278, align 8
  %280 = call i32 @av_frame_ref(i8* %276, %struct.TYPE_16__* %279)
  store i32 %280, i32* %15, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* %15, align 4
  store i32 %283, i32* %5, align 4
  br label %289

284:                                              ; preds = %275
  %285 = load i32*, i32** %8, align 8
  store i32 1, i32* %285, align 4
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %284, %282, %248, %232, %211, %100, %45, %35
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @yop_get_next_nibble(%struct.TYPE_14__*) #1

declare dso_local i32 @yop_paint_block(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @yop_copy_previous_block(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
