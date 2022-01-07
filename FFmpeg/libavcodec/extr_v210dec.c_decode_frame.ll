; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210dec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210dec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 (i32*, i32*, i32*, i32*, i32)* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32, i64* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Broken v210 with too small padding (64 byte) detected\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_FIELD_PROGRESSIVE = common dso_local global i64 0, align 8
@AV_FIELD_TT = common dso_local global i64 0, align 8
@AV_FIELD_TB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %16, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %17, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  br label %50

40:                                               ; preds = %4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 47
  %45 = sdiv i32 %44, 48
  %46 = mul nsw i32 %45, 48
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = mul nsw i32 %47, 8
  %49 = sdiv i32 %48, 3
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %40, %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %50
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 23
  %65 = sdiv i32 %64, 24
  %66 = mul nsw i32 %65, 24
  %67 = mul nsw i32 %66, 8
  %68 = sdiv i32 %67, 3
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %60
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %80, %83
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %77
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i32, i32* @AV_LOG_WARNING, align 4
  %92 = call i32 @av_log(%struct.TYPE_14__* %90, i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %77
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %101

96:                                               ; preds = %60
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(%struct.TYPE_14__* %97, i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %389

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %50
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @MKTAG(i8 signext 67, i8 signext 50, i8 signext 49, i32 48)
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 64
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  %114 = load i8*, i8** %17, align 8
  %115 = call i64 @AV_RN32(i8* %114)
  %116 = call i64 @AV_RN32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 64
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = icmp sge i32 %122, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i8*, i8** %17, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 64
  store i8* %131, i8** %17, align 8
  br label %132

132:                                              ; preds = %129, %118, %113, %108, %102
  %133 = load i8*, i8** %17, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = and i64 %134, 31
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = and i32 %138, 31
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ false, %132 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = call i32 @ff_v210dec_init(%struct.TYPE_11__* %154)
  br label %156

156:                                              ; preds = %150, %142
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %159 = call i32 @ff_get_buffer(%struct.TYPE_14__* %157, %struct.TYPE_13__* %158, i32 0)
  store i32 %159, i32* %13, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %389

163:                                              ; preds = %156
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32* %169, i32** %18, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 5
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  store i32* %175, i32** %19, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 5
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 2
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %20, align 8
  %182 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %357, %163
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %360

193:                                              ; preds = %187
  %194 = load i8*, i8** %17, align 8
  %195 = bitcast i8* %194 to i32*
  store i32* %195, i32** %22, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 12
  %200 = mul nsw i32 %199, 12
  store i32 %200, i32* %12, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  %203 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %202, align 8
  %204 = load i32*, i32** %22, align 8
  %205 = load i32*, i32** %18, align 8
  %206 = load i32*, i32** %19, align 8
  %207 = load i32*, i32** %20, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i32 %203(i32* %204, i32* %205, i32* %206, i32* %207, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %18, align 8
  %214 = load i32, i32* %12, align 4
  %215 = ashr i32 %214, 1
  %216 = load i32*, i32** %19, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %19, align 8
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 1
  %221 = load i32*, i32** %20, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %20, align 8
  %224 = load i32, i32* %12, align 4
  %225 = shl i32 %224, 1
  %226 = sdiv i32 %225, 3
  %227 = load i32*, i32** %22, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %22, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 5
  %235 = icmp slt i32 %230, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %193
  %237 = load i32*, i32** %19, align 8
  %238 = load i32*, i32** %18, align 8
  %239 = load i32*, i32** %20, align 8
  %240 = call i32 @READ_PIXELS(i32* %237, i32* %238, i32* %239)
  %241 = load i32*, i32** %18, align 8
  %242 = load i32*, i32** %19, align 8
  %243 = load i32*, i32** %18, align 8
  %244 = call i32 @READ_PIXELS(i32* %241, i32* %242, i32* %243)
  %245 = load i32*, i32** %20, align 8
  %246 = load i32*, i32** %18, align 8
  %247 = load i32*, i32** %19, align 8
  %248 = call i32 @READ_PIXELS(i32* %245, i32* %246, i32* %247)
  %249 = load i32*, i32** %18, align 8
  %250 = load i32*, i32** %20, align 8
  %251 = load i32*, i32** %18, align 8
  %252 = call i32 @READ_PIXELS(i32* %249, i32* %250, i32* %251)
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 6
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %236, %193
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 1
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %306

262:                                              ; preds = %255
  %263 = load i32*, i32** %19, align 8
  %264 = load i32*, i32** %18, align 8
  %265 = load i32*, i32** %20, align 8
  %266 = call i32 @READ_PIXELS(i32* %263, i32* %264, i32* %265)
  %267 = load i32*, i32** %22, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %22, align 8
  %269 = load i32, i32* %267, align 4
  %270 = call i32 @av_le2ne32(i32 %269)
  store i32 %270, i32* %23, align 4
  %271 = load i32, i32* %23, align 4
  %272 = and i32 %271, 1023
  %273 = load i32*, i32** %18, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %18, align 8
  store i32 %272, i32* %273, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 3
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %281, label %305

281:                                              ; preds = %262
  %282 = load i32, i32* %23, align 4
  %283 = ashr i32 %282, 10
  %284 = and i32 %283, 1023
  %285 = load i32*, i32** %19, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %19, align 8
  store i32 %284, i32* %285, align 4
  %287 = load i32, i32* %23, align 4
  %288 = ashr i32 %287, 20
  %289 = and i32 %288, 1023
  %290 = load i32*, i32** %18, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %18, align 8
  store i32 %289, i32* %290, align 4
  %292 = load i32*, i32** %22, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %22, align 8
  %294 = load i32, i32* %292, align 4
  %295 = call i32 @av_le2ne32(i32 %294)
  store i32 %295, i32* %23, align 4
  %296 = load i32, i32* %23, align 4
  %297 = and i32 %296, 1023
  %298 = load i32*, i32** %20, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %20, align 8
  store i32 %297, i32* %298, align 4
  %300 = load i32, i32* %23, align 4
  %301 = ashr i32 %300, 10
  %302 = and i32 %301, 1023
  %303 = load i32*, i32** %18, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %18, align 8
  store i32 %302, i32* %303, align 4
  br label %305

305:                                              ; preds = %281, %262
  br label %306

306:                                              ; preds = %305, %255
  %307 = load i32, i32* %14, align 4
  %308 = load i8*, i8** %17, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8* %310, i8** %17, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = sdiv i32 %315, 2
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sub nsw i32 %316, %319
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, 1
  %325 = add nsw i32 %320, %324
  %326 = load i32*, i32** %18, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  store i32* %328, i32** %18, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = sdiv i32 %333, 2
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sdiv i32 %337, 2
  %339 = sub nsw i32 %334, %338
  %340 = load i32*, i32** %19, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32* %342, i32** %19, align 8
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 2
  %347 = load i32, i32* %346, align 4
  %348 = sdiv i32 %347, 2
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sdiv i32 %351, 2
  %353 = sub nsw i32 %348, %352
  %354 = load i32*, i32** %20, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32* %356, i32** %20, align 8
  br label %357

357:                                              ; preds = %306
  %358 = load i32, i32* %11, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %11, align 4
  br label %187

360:                                              ; preds = %187
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @AV_FIELD_PROGRESSIVE, align 8
  %365 = icmp sgt i64 %363, %364
  br i1 %365, label %366, label %384

366:                                              ; preds = %360
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 2
  store i32 1, i32* %368, align 8
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @AV_FIELD_TT, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %380, label %374

374:                                              ; preds = %366
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @AV_FIELD_TB, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %374, %366
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 3
  store i32 1, i32* %382, align 4
  br label %383

383:                                              ; preds = %380, %374
  br label %384

384:                                              ; preds = %383, %360
  %385 = load i32*, i32** %8, align 8
  store i32 1, i32* %385, align 4
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %384, %161, %96
  %390 = load i32, i32* %5, align 4
  ret i32 %390
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i32) #1

declare dso_local i64 @AV_RN32(i8*) #1

declare dso_local i32 @ff_v210dec_init(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @READ_PIXELS(i32*, i32*, i32*) #1

declare dso_local i32 @av_le2ne32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
