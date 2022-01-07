; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_mss3_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_mss3_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32, i32*, i32**, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32* }

@HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Frame should have at least %d bytes, got %d instead\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid frame type %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid frame dimensions %dx%d +%d,%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid quality setting %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Keyframe without data found\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Error decoding block %d,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*)* @mss3_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss3_decode_frame(%struct.TYPE_22__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32*], align 16
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %12, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 9
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %13, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @HEADER_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = load i32, i32* @HEADER_SIZE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %45, i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %5, align 4
  br label %495

51:                                               ; preds = %4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bytestream2_init(i32* %14, i32* %52, i32 %53)
  %55 = call i32 @bytestream2_get_be32(i32* %14)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = and i32 %56, -770
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %60, i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %5, align 4
  br label %495

65:                                               ; preds = %51
  %66 = load i32, i32* %21, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %21, align 4
  %71 = call i32 @bytestream2_skip(i32* %14, i32 6)
  %72 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %72, i32* %18, align 4
  %73 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %73, i32* %19, align 4
  %74 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %74, i32* %16, align 4
  %75 = call i32 @bytestream2_get_be16(i32* %14)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %94, 15
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91, %83, %65
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %98, i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %5, align 4
  br label %495

106:                                              ; preds = %91
  %107 = call i32 @bytestream2_skip(i32* %14, i32 4)
  %108 = call i32 @bytestream2_get_byte(i32* %14)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %20, align 4
  %113 = icmp sgt i32 %112, 100
  br i1 %113, label %114, label %120

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load i32, i32* %20, align 4
  %118 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %115, i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %5, align 4
  br label %495

120:                                              ; preds = %111
  %121 = call i32 @bytestream2_skip(i32* %14, i32 4)
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %128, i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %5, align 4
  br label %495

132:                                              ; preds = %124, %120
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %5, align 4
  br label %495

142:                                              ; preds = %135, %132
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = call i32 @ff_reget_buffer(%struct.TYPE_22__* %145, %struct.TYPE_18__* %148, i32 0)
  store i32 %149, i32* %29, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %29, align 4
  store i32 %152, i32* %5, align 4
  br label %495

153:                                              ; preds = %142
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 8
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 3
  store i32 %166, i32* %170, align 8
  %171 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %165
  %174 = load i8*, i8** %7, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = call i32 @av_frame_ref(i8* %174, %struct.TYPE_18__* %177)
  store i32 %178, i32* %29, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* %29, align 4
  store i32 %181, i32* %5, align 4
  br label %495

182:                                              ; preds = %173
  %183 = load i32*, i32** %8, align 8
  store i32 1, i32* %183, align 4
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %5, align 4
  br label %495

185:                                              ; preds = %165
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @reset_coders(%struct.TYPE_20__* %186, i32 %187)
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* @HEADER_SIZE, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @HEADER_SIZE, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i32 @rac_init(%struct.TYPE_19__* %189, i32* %193, i32 %196)
  %198 = load i32, i32* %16, align 4
  %199 = ashr i32 %198, 4
  store i32 %199, i32* %25, align 4
  %200 = load i32, i32* %17, align 4
  %201 = ashr i32 %200, 4
  store i32 %201, i32* %26, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 2
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %19, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %212, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %211, i64 %221
  %223 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  store i32* %222, i32** %223, align 16
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sdiv i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %19, align 4
  %236 = sdiv i32 %235, 2
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %236, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %234, i64 %245
  %247 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 1
  store i32* %246, i32** %247, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 2
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sdiv i32 %255, 2
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %19, align 4
  %260 = sdiv i32 %259, 2
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %260, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %258, i64 %269
  %271 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 2
  store i32* %270, i32** %271, align 16
  store i32 0, i32* %23, align 4
  br label %272

272:                                              ; preds = %480, %185
  %273 = load i32, i32* %23, align 4
  %274 = load i32, i32* %26, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %483

276:                                              ; preds = %272
  store i32 0, i32* %22, align 4
  br label %277

277:                                              ; preds = %440, %276
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %25, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %443

281:                                              ; preds = %277
  store i32 0, i32* %24, align 4
  br label %282

282:                                              ; preds = %436, %281
  %283 = load i32, i32* %24, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %439

285:                                              ; preds = %282
  %286 = load i32, i32* %24, align 4
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = shl i32 8, %289
  store i32 %290, i32* %27, align 4
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 8
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %24, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %294, %296
  %298 = call i32 @decode_block_type(%struct.TYPE_19__* %291, i64 %297)
  store i32 %298, i32* %28, align 4
  %299 = load i32, i32* %28, align 4
  switch i32 %299, label %416 [
    i32 130, label %300
    i32 128, label %327
    i32 131, label %354
    i32 129, label %386
  ]

300:                                              ; preds = %285
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* %24, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %22, align 4
  %312 = load i32, i32* %27, align 4
  %313 = mul nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %24, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %27, align 4
  %326 = call i32 @decode_fill_block(%struct.TYPE_19__* %301, i32 %306, i32* %315, i32 %324, i32 %325)
  br label %416

327:                                              ; preds = %285
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %24, align 4
  %333 = add nsw i32 %331, %332
  %334 = load i32, i32* %24, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %22, align 4
  %339 = load i32, i32* %27, align 4
  %340 = mul nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %337, i64 %341
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %24, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %27, align 4
  %353 = call i32 @decode_image_block(%struct.TYPE_19__* %328, i32 %333, i32* %342, i32 %351, i32 %352)
  br label %416

354:                                              ; preds = %285
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %24, align 4
  %360 = add nsw i32 %358, %359
  %361 = load i32, i32* %24, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 %362
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %27, align 4
  %367 = mul nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %364, i64 %368
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %24, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %27, align 4
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %22, align 4
  %384 = load i32, i32* %23, align 4
  %385 = call i32 @decode_dct_block(%struct.TYPE_19__* %355, i32 %360, i32* %369, i32 %378, i32 %379, i32 %382, i32 %383, i32 %384)
  br label %416

386:                                              ; preds = %285
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %24, align 4
  %392 = add nsw i32 %390, %391
  %393 = load i32, i32* %24, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %22, align 4
  %398 = load i32, i32* %27, align 4
  %399 = mul nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %396, i64 %400
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %24, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %27, align 4
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @decode_haar_block(%struct.TYPE_19__* %387, i32 %392, i32* %401, i32 %410, i32 %411, i32 %414)
  br label %416

416:                                              ; preds = %285, %386, %354, %327, %300
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %426, label %421

421:                                              ; preds = %416
  %422 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %421, %416
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %428 = load i32, i32* @AV_LOG_ERROR, align 4
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* %23, align 4
  %431 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %427, i32 %428, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %429, i32 %430)
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i32 0, i32 0
  store i32 1, i32* %433, align 8
  %434 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %434, i32* %5, align 4
  br label %495

435:                                              ; preds = %421
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %24, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %24, align 4
  br label %282

439:                                              ; preds = %282
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %22, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %22, align 4
  br label %277

443:                                              ; preds = %277
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %445 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = mul nsw i32 %450, 16
  %452 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %453 = load i32*, i32** %452, align 16
  %454 = sext i32 %451 to i64
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  store i32* %455, i32** %452, align 16
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 1
  %462 = load i32, i32* %461, align 4
  %463 = mul nsw i32 %462, 8
  %464 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 1
  %465 = load i32*, i32** %464, align 8
  %466 = sext i32 %463 to i64
  %467 = getelementptr inbounds i32, i32* %465, i64 %466
  store i32* %467, i32** %464, align 8
  %468 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 1
  %470 = load %struct.TYPE_18__*, %struct.TYPE_18__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 2
  %474 = load i32, i32* %473, align 4
  %475 = mul nsw i32 %474, 8
  %476 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 2
  %477 = load i32*, i32** %476, align 16
  %478 = sext i32 %475 to i64
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  store i32* %479, i32** %476, align 16
  br label %480

480:                                              ; preds = %443
  %481 = load i32, i32* %23, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %23, align 4
  br label %272

483:                                              ; preds = %272
  %484 = load i8*, i8** %7, align 8
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %486, align 8
  %488 = call i32 @av_frame_ref(i8* %484, %struct.TYPE_18__* %487)
  store i32 %488, i32* %29, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %483
  %491 = load i32, i32* %29, align 4
  store i32 %491, i32* %5, align 4
  br label %495

492:                                              ; preds = %483
  %493 = load i32*, i32** %8, align 8
  store i32 1, i32* %493, align 4
  %494 = load i32, i32* %11, align 4
  store i32 %494, i32* %5, align 4
  br label %495

495:                                              ; preds = %492, %490, %426, %182, %180, %151, %140, %127, %114, %97, %59, %44
  %496 = load i32, i32* %5, align 4
  ret i32 %496
}

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_22__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @reset_coders(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @rac_init(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @decode_block_type(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @decode_fill_block(%struct.TYPE_19__*, i32, i32*, i32, i32) #1

declare dso_local i32 @decode_image_block(%struct.TYPE_19__*, i32, i32*, i32, i32) #1

declare dso_local i32 @decode_dct_block(%struct.TYPE_19__*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @decode_haar_block(%struct.TYPE_19__*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
