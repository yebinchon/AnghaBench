; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_012v.c_zero12v_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_012v.c_zero12v_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32*, i64*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Dimensions %dx%d not supported.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Packet too small: %d instead of %d\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@__const.zero12v_decode_frame.y_temp = private unnamed_addr constant [6 x i32] [i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768], align 16
@__const.zero12v_decode_frame.u_temp = private unnamed_addr constant [3 x i32] [i32 32768, i32 32768, i32 32768], align 4
@__const.zero12v_decode_frame.v_temp = private unnamed_addr constant [3 x i32] [i32 32768, i32 32768, i32 32768], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @zero12v_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero12v_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [6 x i32], align 16
  %21 = alloca [3 x i32], align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %13, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %18, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 8
  %37 = sdiv i32 %36, 3
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @av_log(%struct.TYPE_11__* %46, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %439

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @MKTAG(i32 48, i8 signext 49, i8 signext 50, i8 signext 118)
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  %77 = mul nsw i32 %76, 3
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 8
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %69
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %81, %69, %60, %54
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %19, align 4
  %97 = mul nsw i32 %95, %96
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %89
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %19, align 4
  %109 = mul nsw i32 %107, %108
  %110 = call i32 @av_log(%struct.TYPE_11__* %100, i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %109)
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %5, align 4
  br label %439

112:                                              ; preds = %89
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %115 = call i32 @ff_get_buffer(%struct.TYPE_11__* %113, %struct.TYPE_10__* %114, i32 0)
  store i32 %115, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  br label %439

119:                                              ; preds = %112
  %120 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32* %130, i32** %17, align 8
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %431, %119
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %434

137:                                              ; preds = %131
  %138 = bitcast [6 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %138, i8* align 16 bitcast ([6 x i32]* @__const.zero12v_decode_frame.y_temp to i8*), i64 24, i1 false)
  %139 = bitcast [3 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 bitcast ([3 x i32]* @__const.zero12v_decode_frame.u_temp to i8*), i64 12, i1 false)
  %140 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 bitcast ([3 x i32]* @__const.zero12v_decode_frame.v_temp to i8*), i64 12, i1 false)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %146, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %145, %153
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** %14, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %160, %168
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %15, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %176, %181
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %175, %183
  %185 = inttoptr i64 %184 to i32*
  store i32* %185, i32** %16, align 8
  store i32 0, i32* %23, align 4
  br label %186

186:                                              ; preds = %326, %137
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %329

190:                                              ; preds = %186
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %23, align 4
  %193 = sub nsw i32 %191, %192
  %194 = icmp slt i32 %193, 6
  br i1 %194, label %203, label %195

195:                                              ; preds = %190
  %196 = load i32*, i32** %17, align 8
  %197 = load i32*, i32** %18, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = icmp slt i64 %201, 16
  br i1 %202, label %203, label %207

203:                                              ; preds = %195, %190
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  store i32* %204, i32** %14, align 8
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  store i32* %205, i32** %15, align 8
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32* %206, i32** %16, align 8
  br label %207

207:                                              ; preds = %203, %195
  %208 = load i32*, i32** %17, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = ptrtoint i32* %208 to i64
  %211 = ptrtoint i32* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 4
  %214 = icmp slt i64 %213, 4
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %329

216:                                              ; preds = %207
  %217 = load i32*, i32** %18, align 8
  %218 = call i32 @AV_RL32(i32* %217)
  store i32 %218, i32* %24, align 4
  %219 = load i32*, i32** %18, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  store i32* %220, i32** %18, align 8
  %221 = load i32, i32* %24, align 4
  %222 = shl i32 %221, 6
  %223 = and i32 %222, 65472
  %224 = load i32*, i32** %15, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %225, i32** %15, align 8
  store i32 %223, i32* %224, align 4
  %226 = load i32, i32* %24, align 4
  %227 = ashr i32 %226, 4
  %228 = and i32 %227, 65472
  %229 = load i32*, i32** %14, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %14, align 8
  store i32 %228, i32* %229, align 4
  %231 = load i32, i32* %24, align 4
  %232 = ashr i32 %231, 14
  %233 = and i32 %232, 65472
  %234 = load i32*, i32** %16, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %16, align 8
  store i32 %233, i32* %234, align 4
  %236 = load i32*, i32** %17, align 8
  %237 = load i32*, i32** %18, align 8
  %238 = ptrtoint i32* %236 to i64
  %239 = ptrtoint i32* %237 to i64
  %240 = sub i64 %238, %239
  %241 = sdiv exact i64 %240, 4
  %242 = icmp slt i64 %241, 4
  br i1 %242, label %243, label %244

243:                                              ; preds = %216
  br label %329

244:                                              ; preds = %216
  %245 = load i32*, i32** %18, align 8
  %246 = call i32 @AV_RL32(i32* %245)
  store i32 %246, i32* %24, align 4
  %247 = load i32*, i32** %18, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 4
  store i32* %248, i32** %18, align 8
  %249 = load i32, i32* %24, align 4
  %250 = shl i32 %249, 6
  %251 = and i32 %250, 65472
  %252 = load i32*, i32** %14, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %14, align 8
  store i32 %251, i32* %252, align 4
  %254 = load i32, i32* %24, align 4
  %255 = ashr i32 %254, 4
  %256 = and i32 %255, 65472
  %257 = load i32*, i32** %15, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %15, align 8
  store i32 %256, i32* %257, align 4
  %259 = load i32, i32* %24, align 4
  %260 = ashr i32 %259, 14
  %261 = and i32 %260, 65472
  %262 = load i32*, i32** %14, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %14, align 8
  store i32 %261, i32* %262, align 4
  %264 = load i32*, i32** %17, align 8
  %265 = load i32*, i32** %18, align 8
  %266 = ptrtoint i32* %264 to i64
  %267 = ptrtoint i32* %265 to i64
  %268 = sub i64 %266, %267
  %269 = sdiv exact i64 %268, 4
  %270 = icmp slt i64 %269, 4
  br i1 %270, label %271, label %272

271:                                              ; preds = %244
  br label %329

272:                                              ; preds = %244
  %273 = load i32*, i32** %18, align 8
  %274 = call i32 @AV_RL32(i32* %273)
  store i32 %274, i32* %24, align 4
  %275 = load i32*, i32** %18, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 4
  store i32* %276, i32** %18, align 8
  %277 = load i32, i32* %24, align 4
  %278 = shl i32 %277, 6
  %279 = and i32 %278, 65472
  %280 = load i32*, i32** %16, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %16, align 8
  store i32 %279, i32* %280, align 4
  %282 = load i32, i32* %24, align 4
  %283 = ashr i32 %282, 4
  %284 = and i32 %283, 65472
  %285 = load i32*, i32** %14, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %14, align 8
  store i32 %284, i32* %285, align 4
  %287 = load i32, i32* %24, align 4
  %288 = ashr i32 %287, 14
  %289 = and i32 %288, 65472
  %290 = load i32*, i32** %15, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %15, align 8
  store i32 %289, i32* %290, align 4
  %292 = load i32*, i32** %17, align 8
  %293 = load i32*, i32** %18, align 8
  %294 = ptrtoint i32* %292 to i64
  %295 = ptrtoint i32* %293 to i64
  %296 = sub i64 %294, %295
  %297 = sdiv exact i64 %296, 4
  %298 = icmp slt i64 %297, 4
  br i1 %298, label %299, label %300

299:                                              ; preds = %272
  br label %329

300:                                              ; preds = %272
  %301 = load i32*, i32** %18, align 8
  %302 = call i32 @AV_RL32(i32* %301)
  store i32 %302, i32* %24, align 4
  %303 = load i32*, i32** %18, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 4
  store i32* %304, i32** %18, align 8
  %305 = load i32, i32* %24, align 4
  %306 = shl i32 %305, 6
  %307 = and i32 %306, 65472
  %308 = load i32*, i32** %14, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 1
  store i32* %309, i32** %14, align 8
  store i32 %307, i32* %308, align 4
  %310 = load i32, i32* %24, align 4
  %311 = ashr i32 %310, 4
  %312 = and i32 %311, 65472
  %313 = load i32*, i32** %16, align 8
  %314 = getelementptr inbounds i32, i32* %313, i32 1
  store i32* %314, i32** %16, align 8
  store i32 %312, i32* %313, align 4
  %315 = load i32, i32* %24, align 4
  %316 = ashr i32 %315, 14
  %317 = and i32 %316, 65472
  %318 = load i32*, i32** %14, align 8
  %319 = getelementptr inbounds i32, i32* %318, i32 1
  store i32* %319, i32** %14, align 8
  store i32 %317, i32* %318, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %23, align 4
  %322 = sub nsw i32 %320, %321
  %323 = icmp slt i32 %322, 6
  br i1 %323, label %324, label %325

324:                                              ; preds = %300
  br label %329

325:                                              ; preds = %300
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %23, align 4
  %328 = add nsw i32 %327, 6
  store i32 %328, i32* %23, align 4
  br label %186

329:                                              ; preds = %324, %299, %271, %243, %215, %186
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %421

333:                                              ; preds = %329
  %334 = load i32, i32* %23, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 2
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 0
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %340, %345
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %339, %347
  %349 = inttoptr i64 %348 to i32*
  %350 = sext i32 %334 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32* %351, i32** %14, align 8
  %352 = load i32, i32* %23, align 4
  %353 = sdiv i32 %352, 2
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 2
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 1
  %358 = load i64, i64* %357, align 8
  %359 = load i32, i32* %10, align 4
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %359, %364
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %358, %366
  %368 = inttoptr i64 %367 to i32*
  %369 = sext i32 %353 to i64
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  store i32* %370, i32** %15, align 8
  %371 = load i32, i32* %23, align 4
  %372 = sdiv i32 %371, 2
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 2
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 2
  %377 = load i64, i64* %376, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 2
  %383 = load i32, i32* %382, align 4
  %384 = mul nsw i32 %378, %383
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %377, %385
  %387 = inttoptr i64 %386 to i32*
  %388 = sext i32 %372 to i64
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32* %389, i32** %16, align 8
  %390 = load i32*, i32** %14, align 8
  %391 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 0, i64 0
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %23, align 4
  %394 = sub nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = mul i64 4, %395
  %397 = trunc i64 %396 to i32
  %398 = call i32 @memcpy(i32* %390, i32* %391, i32 %397)
  %399 = load i32*, i32** %15, align 8
  %400 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %23, align 4
  %403 = sub nsw i32 %401, %402
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = mul i64 4, %405
  %407 = udiv i64 %406, 2
  %408 = trunc i64 %407 to i32
  %409 = call i32 @memcpy(i32* %399, i32* %400, i32 %408)
  %410 = load i32*, i32** %16, align 8
  %411 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %412 = load i32, i32* %12, align 4
  %413 = load i32, i32* %23, align 4
  %414 = sub nsw i32 %412, %413
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = mul i64 4, %416
  %418 = udiv i64 %417, 2
  %419 = trunc i64 %418 to i32
  %420 = call i32 @memcpy(i32* %410, i32* %411, i32 %419)
  br label %421

421:                                              ; preds = %333, %329
  %422 = load i32, i32* %19, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i32, i32* %423, i64 %424
  store i32* %425, i32** %17, align 8
  %426 = load i32*, i32** %17, align 8
  %427 = load i32, i32* %19, align 4
  %428 = sext i32 %427 to i64
  %429 = sub i64 0, %428
  %430 = getelementptr inbounds i32, i32* %426, i64 %429
  store i32* %430, i32** %18, align 8
  br label %431

431:                                              ; preds = %421
  %432 = load i32, i32* %10, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %10, align 4
  br label %131

434:                                              ; preds = %131
  %435 = load i32*, i32** %8, align 8
  store i32 1, i32* %435, align 4
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  store i32 %438, i32* %5, align 4
  br label %439

439:                                              ; preds = %434, %117, %99, %45
  %440 = load i32, i32* %5, align 4
  ret i32 %440
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i64 @MKTAG(i32, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
