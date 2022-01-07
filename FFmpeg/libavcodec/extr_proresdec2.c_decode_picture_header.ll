; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error, wrong picture header size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error, wrong picture data size\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unsupported slice resolution: %dx%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"error, wrong slice count\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"error, wrong slice data size\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"error, slice out of bounds\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error wrong mb count y %d h %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @decode_picture_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_picture_header(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %35, i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %4, align 4
  br label %296

39:                                               ; preds = %30
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @AV_RB32(i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %47, i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %4, align 4
  br label %296

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 4
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %60, 3
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62, %51
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %14, align 4
  %71 = shl i32 1, %70
  %72 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %66, i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %4, align 4
  br label %296

74:                                               ; preds = %62
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 15
  %79 = ashr i32 %78, 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %74
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 31
  %91 = ashr i32 %90, 5
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %102

94:                                               ; preds = %74
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 15
  %99 = ashr i32 %98, 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %86
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = ashr i32 %108, %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = shl i32 1, %114
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %113, %116
  %118 = call i32 @av_popcount(i32 %117)
  %119 = add nsw i32 %110, %118
  %120 = mul nsw i32 %105, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %102
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = icmp ne %struct.TYPE_8__* %129, null
  br i1 %130, label %152, label %131

131:                                              ; preds = %126, %102
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = call i32 @av_freep(%struct.TYPE_8__** %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32 0, i32* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call %struct.TYPE_8__* @av_mallocz_array(i32 %137, i32 24)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = icmp ne %struct.TYPE_8__* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %131
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %4, align 4
  br label %296

148:                                              ; preds = %131
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %126
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @EINVAL, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %4, align 4
  br label %296

158:                                              ; preds = %152
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* %7, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %166, i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %169, i32* %4, align 4
  br label %296

170:                                              ; preds = %158
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32* %174, i32** %19, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = load i32, i32* %11, align 4
  %177 = mul nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32* %179, i32** %18, align 8
  %180 = load i32, i32* %13, align 4
  %181 = shl i32 1, %180
  store i32 %181, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %273, %170
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %276

186:                                              ; preds = %182
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  store %struct.TYPE_8__* %192, %struct.TYPE_8__** %20, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32* %193, i32** %195, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = load i32, i32* %9, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = call i32 @AV_RB16(i32* %200)
  %202 = load i32*, i32** %18, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %18, align 8
  br label %205

205:                                              ; preds = %213, %186
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* %15, align 4
  %215 = ashr i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %205

216:                                              ; preds = %205
  %217 = load i32, i32* %16, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %17, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load i32*, i32** %18, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = ptrtoint i32* %226 to i64
  %231 = ptrtoint i32* %229 to i64
  %232 = sub i64 %230, %231
  %233 = sdiv exact i64 %232, 4
  %234 = trunc i64 %233 to i32
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %239, 6
  br i1 %240, label %241, label %246

241:                                              ; preds = %216
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = load i32, i32* @AV_LOG_ERROR, align 4
  %244 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %242, i32 %243, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %245, i32* %4, align 4
  br label %296

246:                                              ; preds = %216
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %250, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %246
  %256 = load i32, i32* %13, align 4
  %257 = shl i32 1, %256
  store i32 %257, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %260

260:                                              ; preds = %255, %246
  %261 = load i32*, i32** %18, align 8
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = icmp ugt i32* %261, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %269 = load i32, i32* @AV_LOG_ERROR, align 4
  %270 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %268, i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %271 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %271, i32* %4, align 4
  br label %296

272:                                              ; preds = %260
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %182

276:                                              ; preds = %182
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %17, align 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %280, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %279, %276
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %287 = load i32, i32* @AV_LOG_ERROR, align 4
  %288 = load i32, i32* %17, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %286, i32 %287, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %288, i32 %291)
  %293 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %293, i32* %4, align 4
  br label %296

294:                                              ; preds = %279
  %295 = load i32, i32* %12, align 4
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %294, %285, %267, %241, %165, %155, %145, %65, %46, %34
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_popcount(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_8__**) #1

declare dso_local %struct.TYPE_8__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
