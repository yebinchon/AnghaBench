; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32*, i32*, i32*, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32**, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Premature end of data!\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Incorrect frame size: %ix%i+%ix%i of %ix%i\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"dimensions too large\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Premature end of data! (need %i got %i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Cursor hot spot is not in image: %ix%i of %ix%i cursor size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"Depth mismatch. Container %i bpp, Frame data: %i bpp\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Invalid header: bigendian flag = %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unsupported block type 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 15
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @bytestream2_init(i32* %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @bytestream2_skip(i32* %43, i32 2)
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @bytestream2_get_be16(i32* %45)
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 12, %48
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @bytestream2_get_bytes_left(i32* %50)
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %5, align 4
  br label %766

56:                                               ; preds = %4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 11
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = call i32 @ff_reget_buffer(%struct.TYPE_16__* %57, %struct.TYPE_17__* %60, i32 0)
  store i32 %61, i32* %24, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %24, align 4
  store i32 %64, i32* %5, align 4
  br label %766

65:                                               ; preds = %56
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 11
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 12
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %214

79:                                               ; preds = %65
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %95, %98
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %92, %79
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %18, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %109, %110
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %113, %100
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %137, %131
  %142 = load i32, i32* %17, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %213

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %213

147:                                              ; preds = %144
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 11
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 11
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %162, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %161, i64 %171
  store i32* %172, i32** %14, align 8
  store i32 0, i32* %25, align 4
  br label %173

173:                                              ; preds = %209, %147
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %212

177:                                              ; preds = %173
  %178 = load i32*, i32** %14, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 12
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %25, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %186, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %181, i64 %191
  %193 = load i32, i32* %17, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %193, %196
  %198 = call i32 @memcpy(i32* %178, i32* %192, i32 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 11
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %14, align 8
  br label %209

209:                                              ; preds = %177
  %210 = load i32, i32* %25, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %25, align 4
  br label %173

212:                                              ; preds = %173
  br label %213

213:                                              ; preds = %212, %144, %141
  br label %214

214:                                              ; preds = %213, %65
  br label %215

215:                                              ; preds = %590, %214
  %216 = load i32, i32* %21, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %21, align 4
  %218 = icmp ne i32 %216, 0
  br i1 %218, label %219, label %591

219:                                              ; preds = %215
  %220 = load i32*, i32** %13, align 8
  %221 = call i32 @bytestream2_get_bytes_left(i32* %220)
  %222 = icmp slt i32 %221, 12
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %225 = load i32, i32* @AV_LOG_ERROR, align 4
  %226 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %224, i32 %225, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %766

227:                                              ; preds = %219
  %228 = load i32*, i32** %13, align 8
  %229 = call i32 @bytestream2_get_be16(i32* %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32*, i32** %13, align 8
  %231 = call i32 @bytestream2_get_be16(i32* %230)
  store i32 %231, i32* %16, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = call i32 @bytestream2_get_be16(i32* %232)
  store i32 %233, i32* %17, align 4
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @bytestream2_get_be16(i32* %234)
  store i32 %235, i32* %18, align 4
  %236 = load i32*, i32** %13, align 8
  %237 = call i32 @bytestream2_get_be32(i32* %236)
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %17, align 4
  %240 = add nsw i32 %238, %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %240, %243
  br i1 %244, label %253, label %245

245:                                              ; preds = %227
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %18, align 4
  %248 = add nsw i32 %246, %247
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %268

253:                                              ; preds = %245, %227
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %255 = load i32, i32* @AV_LOG_ERROR, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %254, i32 %255, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %256, i32 %257, i32 %258, i32 %259, i32 %262, i32 %265)
  %267 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %267, i32* %5, align 4
  br label %766

268:                                              ; preds = %245
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 11
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  %273 = load i32**, i32*** %272, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 %276, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  %283 = load i32, i32* %16, align 4
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 11
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %283, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %282, i64 %292
  store i32* %293, i32** %14, align 8
  %294 = load i32*, i32** %13, align 8
  %295 = call i32 @bytestream2_get_bytes_left(i32* %294)
  store i32 %295, i32* %23, align 4
  %296 = load i32, i32* %20, align 4
  switch i32 %296, label %585 [
    i32 134, label %297
    i32 133, label %447
    i32 132, label %450
    i32 131, label %465
    i32 130, label %468
    i32 129, label %471
    i32 128, label %521
    i32 0, label %524
    i32 5, label %566
  ]

297:                                              ; preds = %268
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %18, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %300, %303
  %305 = load i32, i32* @INT_MAX, align 4
  %306 = sdiv i32 %305, 2
  %307 = sub nsw i32 %306, 2
  %308 = icmp sgt i32 %304, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %297
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %311 = load i32, i32* @AV_LOG_ERROR, align 4
  %312 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %310, i32 %311, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %313 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %313, i32* %5, align 4
  br label %766

314:                                              ; preds = %297
  %315 = load i32, i32* %23, align 4
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* %18, align 4
  %318 = mul nsw i32 %316, %317
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 %318, %321
  %323 = mul nsw i32 %322, 2
  %324 = add nsw i32 2, %323
  %325 = icmp slt i32 %315, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %314
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %328 = load i32, i32* @AV_LOG_ERROR, align 4
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %18, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = mul nsw i32 %331, %334
  %336 = mul nsw i32 %335, 2
  %337 = add nsw i32 2, %336
  %338 = load i32, i32* %23, align 4
  %339 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %327, i32 %328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %337, i32 %338)
  %340 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %340, i32* %5, align 4
  br label %766

341:                                              ; preds = %314
  %342 = load i32*, i32** %13, align 8
  %343 = call i32 @bytestream2_skip(i32* %342, i32 2)
  %344 = load i32, i32* %17, align 4
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 0
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %15, align 4
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 7
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 8
  store i32 %353, i32* %355, align 8
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp sgt i32 %358, %361
  br i1 %362, label %371, label %363

363:                                              ; preds = %341
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 8
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = icmp sgt i32 %366, %369
  br i1 %370, label %371, label %391

371:                                              ; preds = %363, %341
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %373 = load i32, i32* @AV_LOG_ERROR, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 8
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %372, i32 %373, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %376, i32 %379, i32 %382, i32 %385)
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 8
  store i32 0, i32* %388, align 8
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 7
  store i32 0, i32* %390, align 4
  br label %391

391:                                              ; preds = %371, %363
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = mul nsw i32 %394, %397
  %399 = load i32, i32* @INT_MAX, align 4
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 8
  %403 = sdiv i32 %399, %402
  %404 = icmp sge i32 %398, %403
  br i1 %404, label %405, label %410

405:                                              ; preds = %391
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %407 = call i32 @reset_buffers(%struct.TYPE_14__* %406)
  %408 = load i32, i32* @EINVAL, align 4
  %409 = call i32 @AVERROR(i32 %408)
  store i32 %409, i32* %5, align 4
  br label %766

410:                                              ; preds = %391
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = mul nsw i32 %413, %416
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = mul nsw i32 %417, %420
  store i32 %421, i32* %26, align 4
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 14
  %424 = load i32, i32* %26, align 4
  %425 = call i32 @av_reallocp(i32** %423, i32 %424)
  store i32 %425, i32* %24, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %439, label %427

427:                                              ; preds = %410
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 13
  %430 = load i32, i32* %26, align 4
  %431 = call i32 @av_reallocp(i32** %429, i32 %430)
  store i32 %431, i32* %24, align 4
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %439, label %433

433:                                              ; preds = %427
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 12
  %436 = load i32, i32* %26, align 4
  %437 = call i32 @av_reallocp(i32** %435, i32 %436)
  store i32 %437, i32* %24, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %433, %427, %410
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %441 = call i32 @reset_buffers(%struct.TYPE_14__* %440)
  %442 = load i32, i32* %24, align 4
  store i32 %442, i32* %5, align 4
  br label %766

443:                                              ; preds = %433
  br label %444

444:                                              ; preds = %443
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %446 = call i32 @load_cursor(%struct.TYPE_14__* %445)
  br label %590

447:                                              ; preds = %268
  %448 = load i32*, i32** %13, align 8
  %449 = call i32 @bytestream2_skip(i32* %448, i32 2)
  br label %590

450:                                              ; preds = %268
  %451 = load i32, i32* %15, align 4
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 7
  %454 = load i32, i32* %453, align 4
  %455 = sub nsw i32 %451, %454
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 2
  store i32 %455, i32* %457, align 8
  %458 = load i32, i32* %16, align 4
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 8
  %462 = sub nsw i32 %458, %461
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 5
  store i32 %462, i32* %464, align 4
  br label %590

465:                                              ; preds = %268
  %466 = load i32*, i32** %13, align 8
  %467 = call i32 @bytestream2_skip(i32* %466, i32 10)
  br label %590

468:                                              ; preds = %268
  %469 = load i32*, i32** %13, align 8
  %470 = call i32 @bytestream2_skip(i32* %469, i32 4)
  br label %590

471:                                              ; preds = %268
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 11
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 0
  store i32 1, i32* %475, align 8
  %476 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %478 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %477, i32 0, i32 11
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 3
  store i32 %476, i32* %480, align 8
  %481 = load i32*, i32** %13, align 8
  %482 = call i8* @bytestream2_get_byte(i32* %481)
  %483 = ptrtoint i8* %482 to i32
  store i32 %483, i32* %19, align 4
  %484 = load i32, i32* %19, align 4
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %486 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i32 0, i32 9
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %484, %487
  br i1 %488, label %489, label %497

489:                                              ; preds = %471
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %491 = load i32, i32* @AV_LOG_INFO, align 4
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %19, align 4
  %496 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %490, i32 %491, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %494, i32 %495)
  br label %497

497:                                              ; preds = %489, %471
  %498 = load i32*, i32** %13, align 8
  %499 = call i32 @bytestream2_skip(i32* %498, i32 1)
  %500 = load i32*, i32** %13, align 8
  %501 = call i8* @bytestream2_get_byte(i32* %500)
  %502 = ptrtoint i8* %501 to i32
  %503 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 10
  store i32 %502, i32* %504, align 8
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 10
  %507 = load i32, i32* %506, align 8
  %508 = and i32 %507, -2
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %518

510:                                              ; preds = %497
  %511 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %512 = load i32, i32* @AV_LOG_INFO, align 4
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 10
  %515 = load i32, i32* %514, align 8
  %516 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %511, i32 %512, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %515)
  %517 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %517, i32* %5, align 4
  br label %766

518:                                              ; preds = %497
  %519 = load i32*, i32** %13, align 8
  %520 = call i32 @bytestream2_skip(i32* %519, i32 13)
  br label %590

521:                                              ; preds = %268
  %522 = load i32*, i32** %13, align 8
  %523 = call i32 @bytestream2_skip(i32* %522, i32 2)
  br label %590

524:                                              ; preds = %268
  %525 = load i32, i32* %23, align 4
  %526 = load i32, i32* %17, align 4
  %527 = load i32, i32* %18, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %529, i32 0, i32 6
  %531 = load i32, i32* %530, align 8
  %532 = mul nsw i32 %528, %531
  %533 = icmp slt i32 %525, %532
  br i1 %533, label %534, label %547

534:                                              ; preds = %524
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %536 = load i32, i32* @AV_LOG_ERROR, align 4
  %537 = load i32, i32* %17, align 4
  %538 = load i32, i32* %18, align 4
  %539 = mul nsw i32 %537, %538
  %540 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %541 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %540, i32 0, i32 6
  %542 = load i32, i32* %541, align 8
  %543 = mul nsw i32 %539, %542
  %544 = load i32, i32* %23, align 4
  %545 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %535, i32 %536, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %543, i32 %544)
  %546 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %546, i32* %5, align 4
  br label %766

547:                                              ; preds = %524
  %548 = load i32*, i32** %14, align 8
  %549 = load i32, i32* %17, align 4
  %550 = load i32, i32* %18, align 4
  %551 = load i32*, i32** %13, align 8
  %552 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %553 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %552, i32 0, i32 6
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %556 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %555, i32 0, i32 10
  %557 = load i32, i32* %556, align 8
  %558 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 11
  %560 = load %struct.TYPE_17__*, %struct.TYPE_17__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %560, i32 0, i32 1
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 0
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @paint_raw(i32* %548, i32 %549, i32 %550, i32* %551, i32 %554, i32 %557, i32 %564)
  br label %590

566:                                              ; preds = %268
  %567 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %568 = load i32*, i32** %14, align 8
  %569 = load i32*, i32** %13, align 8
  %570 = load i32, i32* %17, align 4
  %571 = load i32, i32* %18, align 4
  %572 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %573 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %572, i32 0, i32 11
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 1
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 0
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @decode_hextile(%struct.TYPE_14__* %567, i32* %568, i32* %569, i32 %570, i32 %571, i32 %578)
  store i32 %579, i32* %22, align 4
  %580 = load i32, i32* %22, align 4
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %584

582:                                              ; preds = %566
  %583 = load i32, i32* %22, align 4
  store i32 %583, i32* %5, align 4
  br label %766

584:                                              ; preds = %566
  br label %590

585:                                              ; preds = %268
  %586 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %587 = load i32, i32* @AV_LOG_ERROR, align 4
  %588 = load i32, i32* %20, align 4
  %589 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %586, i32 %587, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %588)
  store i32 0, i32* %21, align 4
  br label %590

590:                                              ; preds = %585, %584, %547, %521, %518, %468, %465, %450, %447, %444
  br label %215

591:                                              ; preds = %215
  %592 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 12
  %594 = load i32*, i32** %593, align 8
  %595 = icmp ne i32* %594, null
  br i1 %595, label %596, label %754

596:                                              ; preds = %591
  %597 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  store i32 %599, i32* %17, align 4
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %604 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %603, i32 0, i32 2
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* %17, align 4
  %607 = add nsw i32 %605, %606
  %608 = icmp slt i32 %602, %607
  br i1 %608, label %609, label %617

609:                                              ; preds = %596
  %610 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %611 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %614 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 8
  %616 = sub nsw i32 %612, %615
  store i32 %616, i32* %17, align 4
  br label %617

617:                                              ; preds = %609, %596
  %618 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %619 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %618, i32 0, i32 3
  %620 = load i32, i32* %619, align 4
  store i32 %620, i32* %18, align 4
  %621 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %622 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %621, i32 0, i32 4
  %623 = load i32, i32* %622, align 8
  %624 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %625 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %624, i32 0, i32 5
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* %18, align 4
  %628 = add nsw i32 %626, %627
  %629 = icmp slt i32 %623, %628
  br i1 %629, label %630, label %638

630:                                              ; preds = %617
  %631 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 4
  %633 = load i32, i32* %632, align 8
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %635 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = sub nsw i32 %633, %636
  store i32 %637, i32* %18, align 4
  br label %638

638:                                              ; preds = %630, %617
  %639 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %640 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  store i32 %641, i32* %15, align 4
  %642 = load i32, i32* %15, align 4
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %644, label %648

644:                                              ; preds = %638
  %645 = load i32, i32* %15, align 4
  %646 = load i32, i32* %17, align 4
  %647 = add nsw i32 %646, %645
  store i32 %647, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %648

648:                                              ; preds = %644, %638
  %649 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %650 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %649, i32 0, i32 5
  %651 = load i32, i32* %650, align 4
  store i32 %651, i32* %16, align 4
  %652 = load i32, i32* %16, align 4
  %653 = icmp slt i32 %652, 0
  br i1 %653, label %654, label %658

654:                                              ; preds = %648
  %655 = load i32, i32* %16, align 4
  %656 = load i32, i32* %18, align 4
  %657 = add nsw i32 %656, %655
  store i32 %657, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %658

658:                                              ; preds = %654, %648
  %659 = load i32, i32* %17, align 4
  %660 = icmp sgt i32 %659, 0
  br i1 %660, label %661, label %753

661:                                              ; preds = %658
  %662 = load i32, i32* %18, align 4
  %663 = icmp sgt i32 %662, 0
  br i1 %663, label %664, label %753

664:                                              ; preds = %661
  %665 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %666 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %665, i32 0, i32 11
  %667 = load %struct.TYPE_17__*, %struct.TYPE_17__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %667, i32 0, i32 2
  %669 = load i32**, i32*** %668, align 8
  %670 = getelementptr inbounds i32*, i32** %669, i64 0
  %671 = load i32*, i32** %670, align 8
  %672 = load i32, i32* %15, align 4
  %673 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %674 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %673, i32 0, i32 6
  %675 = load i32, i32* %674, align 8
  %676 = mul nsw i32 %672, %675
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i32, i32* %671, i64 %677
  %679 = load i32, i32* %16, align 4
  %680 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %681 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %680, i32 0, i32 11
  %682 = load %struct.TYPE_17__*, %struct.TYPE_17__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 1
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 0
  %686 = load i32, i32* %685, align 4
  %687 = mul nsw i32 %679, %686
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32, i32* %678, i64 %688
  store i32* %689, i32** %14, align 8
  store i32 0, i32* %27, align 4
  br label %690

690:                                              ; preds = %726, %664
  %691 = load i32, i32* %27, align 4
  %692 = load i32, i32* %18, align 4
  %693 = icmp slt i32 %691, %692
  br i1 %693, label %694, label %729

694:                                              ; preds = %690
  %695 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %696 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %695, i32 0, i32 12
  %697 = load i32*, i32** %696, align 8
  %698 = load i32, i32* %27, align 4
  %699 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %700 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = mul nsw i32 %698, %701
  %703 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %704 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %703, i32 0, i32 6
  %705 = load i32, i32* %704, align 8
  %706 = mul nsw i32 %702, %705
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, i32* %697, i64 %707
  %709 = load i32*, i32** %14, align 8
  %710 = load i32, i32* %17, align 4
  %711 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %712 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %711, i32 0, i32 6
  %713 = load i32, i32* %712, align 8
  %714 = mul nsw i32 %710, %713
  %715 = call i32 @memcpy(i32* %708, i32* %709, i32 %714)
  %716 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %717 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %716, i32 0, i32 11
  %718 = load %struct.TYPE_17__*, %struct.TYPE_17__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %718, i32 0, i32 1
  %720 = load i32*, i32** %719, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 0
  %722 = load i32, i32* %721, align 4
  %723 = load i32*, i32** %14, align 8
  %724 = sext i32 %722 to i64
  %725 = getelementptr inbounds i32, i32* %723, i64 %724
  store i32* %725, i32** %14, align 8
  br label %726

726:                                              ; preds = %694
  %727 = load i32, i32* %27, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %27, align 4
  br label %690

729:                                              ; preds = %690
  %730 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %731 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %730, i32 0, i32 11
  %732 = load %struct.TYPE_17__*, %struct.TYPE_17__** %731, align 8
  %733 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %732, i32 0, i32 2
  %734 = load i32**, i32*** %733, align 8
  %735 = getelementptr inbounds i32*, i32** %734, i64 0
  %736 = load i32*, i32** %735, align 8
  store i32* %736, i32** %14, align 8
  %737 = load i32*, i32** %14, align 8
  %738 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %739 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i32 0, i32 11
  %740 = load %struct.TYPE_17__*, %struct.TYPE_17__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %740, i32 0, i32 1
  %742 = load i32*, i32** %741, align 8
  %743 = getelementptr inbounds i32, i32* %742, i64 0
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %746 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %747 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 8
  %749 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %750 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %749, i32 0, i32 5
  %751 = load i32, i32* %750, align 4
  %752 = call i32 @put_cursor(i32* %737, i32 %744, %struct.TYPE_14__* %745, i32 %748, i32 %751)
  br label %753

753:                                              ; preds = %729, %661, %658
  br label %754

754:                                              ; preds = %753, %591
  %755 = load i32*, i32** %8, align 8
  store i32 1, i32* %755, align 4
  %756 = load i8*, i8** %7, align 8
  %757 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %758 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %757, i32 0, i32 11
  %759 = load %struct.TYPE_17__*, %struct.TYPE_17__** %758, align 8
  %760 = call i32 @av_frame_ref(i8* %756, %struct.TYPE_17__* %759)
  store i32 %760, i32* %24, align 4
  %761 = icmp slt i32 %760, 0
  br i1 %761, label %762, label %764

762:                                              ; preds = %754
  %763 = load i32, i32* %24, align 4
  store i32 %763, i32* %5, align 4
  br label %766

764:                                              ; preds = %754
  %765 = load i32, i32* %11, align 4
  store i32 %765, i32* %5, align 4
  br label %766

766:                                              ; preds = %764, %762, %582, %534, %510, %439, %405, %326, %309, %253, %223, %63, %54
  %767 = load i32, i32* %5, align 4
  ret i32 %767
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @reset_buffers(%struct.TYPE_14__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_reallocp(i32**, i32) #1

declare dso_local i32 @load_cursor(%struct.TYPE_14__*) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i32 @paint_raw(i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @decode_hextile(%struct.TYPE_14__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_cursor(i32*, i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
