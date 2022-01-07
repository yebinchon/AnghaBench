; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_23__*, i64, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_23__ = type { i32, i32*, i32** }
%struct.TYPE_20__ = type { i32 (i64, i32*, i32)* }
%struct.TYPE_22__ = type { i32, i32* }

@MADm_TAG = common dso_local global i32 0, align 4
@MADe_TAG = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Input data too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Dimensions too small\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, i32*, %struct.TYPE_22__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_24__* %0, i8* %1, i32* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %12, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %13, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @bytestream2_init(i32* %14, i32* %31, i32 %32)
  %34 = call i32 @bytestream2_get_le32(i32* %14)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @MADm_TAG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @MADe_TAG, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %4
  %43 = phi i1 [ true, %4 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  %45 = call i32 @bytestream2_skip(i32* %14, i32 10)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = call i32 @bytestream2_get_le16(i32* %14)
  %53 = call i32 @av_reduce(i32* %48, i32* %51, i32 %52, i32 1000, i32 1073741824)
  %54 = call i32 @bytestream2_get_le16(i32* %14)
  store i32 %54, i32* %15, align 4
  %55 = call i32 @bytestream2_get_le16(i32* %14)
  store i32 %55, i32* %16, align 4
  %56 = call i32 @bytestream2_skip(i32* %14, i32 1)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = call i32 @bytestream2_get_byte(i32* %14)
  %59 = call i32 @calc_quant_matrix(%struct.TYPE_21__* %57, i32 %58)
  %60 = call i32 @bytestream2_skip(i32* %14, i32 2)
  %61 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %68

63:                                               ; preds = %42
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 @av_log(%struct.TYPE_24__* %64, i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %5, align 4
  br label %326

68:                                               ; preds = %42
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %79

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 @av_log(%struct.TYPE_24__* %75, i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %5, align 4
  br label %326

79:                                               ; preds = %71
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = call i32 @av_frame_unref(%struct.TYPE_23__* %94)
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 2048
  %100 = mul nsw i32 %99, 7
  %101 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %5, align 4
  br label %326

105:                                              ; preds = %91
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @ff_set_dimensions(%struct.TYPE_24__* %106, i32 %107, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %5, align 4
  br label %326

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %85
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %117 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %118 = call i32 @ff_get_buffer(%struct.TYPE_24__* %115, %struct.TYPE_23__* %116, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %5, align 4
  br label %326

122:                                              ; preds = %114
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %214

125:                                              ; preds = %122
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %214, label %134

134:                                              ; preds = %125
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = load i32, i32* @AV_LOG_WARNING, align 4
  %137 = call i32 @av_log(%struct.TYPE_24__* %135, i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %143 = call i32 @ff_get_buffer(%struct.TYPE_24__* %138, %struct.TYPE_23__* %141, i32 %142)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %5, align 4
  br label %326

148:                                              ; preds = %134
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %160, %167
  %169 = call i32 @memset(i32* %155, i32 0, i32 %168)
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %181, 2
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %182, %189
  %191 = call i32 @memset(i32* %176, i32 128, i32 %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 2
  %196 = load i32**, i32*** %195, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 2
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sdiv i32 %203, 2
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %204, %211
  %213 = call i32 @memset(i32* %198, i32 128, i32 %212)
  br label %214

214:                                              ; preds = %148, %125, %122
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 6
  %219 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %220 = call i32 @av_fast_padded_malloc(i64* %216, i32* %218, i32 %219)
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %214
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = call i32 @AVERROR(i32 %226)
  store i32 %227, i32* %5, align 4
  br label %326

228:                                              ; preds = %214
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32 (i64, i32*, i32)*, i32 (i64, i32*, i32)** %231, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @bytestream2_tell(i32* %14)
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %241 = sdiv i32 %240, 2
  %242 = call i32 %232(i64 %235, i32* %239, i32 %241)
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to i32*
  %247 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %251 = call i32 @memset(i32* %249, i32 0, i32 %250)
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @bytestream2_get_bytes_left(i32* %14)
  %258 = mul nsw i32 8, %257
  %259 = call i32 @init_get_bits(i32* %253, i64 %256, i32 %258)
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  br label %262

262:                                              ; preds = %300, %228
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 15
  %270 = sdiv i32 %269, 16
  %271 = icmp slt i32 %265, %270
  br i1 %271, label %272, label %305

272:                                              ; preds = %262
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 1
  store i32 0, i32* %274, align 4
  br label %275

275:                                              ; preds = %294, %272
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 15
  %283 = sdiv i32 %282, 16
  %284 = icmp slt i32 %278, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %275
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %288 = load i32, i32* %18, align 4
  %289 = call i64 @decode_mb(%struct.TYPE_21__* %286, %struct.TYPE_23__* %287, i32 %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %292, i32* %5, align 4
  br label %326

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  br label %275

299:                                              ; preds = %275
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  br label %262

305:                                              ; preds = %262
  %306 = load i32*, i32** %8, align 8
  store i32 1, i32* %306, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @MADe_TAG, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %305
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %312, align 8
  %314 = call i32 @av_frame_unref(%struct.TYPE_23__* %313)
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %316, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %319 = call i32 @av_frame_ref(%struct.TYPE_23__* %317, %struct.TYPE_23__* %318)
  store i32 %319, i32* %19, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %310
  %322 = load i32, i32* %19, align 4
  store i32 %322, i32* %5, align 4
  br label %326

323:                                              ; preds = %310
  br label %324

324:                                              ; preds = %323, %305
  %325 = load i32, i32* %11, align 4
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %324, %321, %291, %225, %146, %120, %111, %103, %74, %63
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @calc_quant_matrix(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i64 @decode_mb(%struct.TYPE_21__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
