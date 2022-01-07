; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rscc.c_rscc_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rscc.c_rscc_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32*, %struct.TYPE_29__*, %struct.TYPE_24__*, i32*, %struct.TYPE_25__, i32 }
%struct.TYPE_29__ = type { i32*, i32** }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_27__ = type { i32, i32, i32**, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Packet too small (%d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no tiles\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Frame with %d tiles.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"packed tiles of size %lu.\0A\00", align 1
@TILE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Tile deflate error %d.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid tile dimensions\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"tile %d orig(%d,%d) %dx%d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"invalid tile %d at (%d.%d) with size %dx%d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"out of bounds tile %d at (%d.%d) with size %dx%d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"pixel_size %d packed_size %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Invalid tile size %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Insufficient input for %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Pixel deflate error %d.\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i8*, i32*, %struct.TYPE_26__*)* @rscc_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rscc_decode_frame(%struct.TYPE_28__* %0, i8* %1, i32* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %9, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %10, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 7
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %11, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %13, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bytestream2_init(%struct.TYPE_25__* %35, i32* %38, i32 %41)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %44 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_25__* %43)
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %54

46:                                               ; preds = %4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %761

54:                                               ; preds = %4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %62 = load i32, i32* @AV_LOG_DEBUG, align 4
  %63 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  br label %761

67:                                               ; preds = %54
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 16
  %75 = trunc i64 %74 to i32
  %76 = call i32 @av_fast_malloc(%struct.TYPE_24__** %69, i32* %71, i32 %75)
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = icmp ne %struct.TYPE_24__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %21, align 4
  br label %757

84:                                               ; preds = %67
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %86 = load i32, i32* @AV_LOG_DEBUG, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %85, i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %17, align 4
  %90 = icmp sgt i32 %89, 5
  br i1 %90, label %91, label %151

91:                                               ; preds = %84
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %92, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %96 = call i32 @bytestream2_get_byte(%struct.TYPE_25__* %95)
  store i32 %96, i32* %22, align 4
  br label %101

97:                                               ; preds = %91
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %99 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %103 = load i32, i32* %22, align 4
  %104 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @TILE_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %101
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @TILE_SIZE, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %23, align 4
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %115 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_25__* %114)
  %116 = load i32, i32* %22, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %21, align 4
  br label %757

120:                                              ; preds = %110
  %121 = load i32, i32* %23, align 4
  %122 = call i32* @av_malloc(i32 %121)
  store i32* %122, i32** %16, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %21, align 4
  br label %757

128:                                              ; preds = %120
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @uncompress(i32* %129, i32* %23, i32* %132, i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = load i32, i32* %21, align 4
  %141 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %138, i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %142, i32* %21, align 4
  br label %757

143:                                              ; preds = %128
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %145 = load i32, i32* %22, align 4
  %146 = call i32 @bytestream2_skip(%struct.TYPE_25__* %144, i32 %145)
  %147 = load i32*, i32** %16, align 8
  %148 = load i32, i32* %23, align 4
  %149 = call i32 @bytestream2_init(%struct.TYPE_25__* %12, i32* %147, i32 %148)
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %11, align 8
  br label %150

150:                                              ; preds = %143, %101
  br label %151

151:                                              ; preds = %150, %84
  store i32 0, i32* %20, align 4
  br label %152

152:                                              ; preds = %427, %151
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %430

156:                                              ; preds = %152
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %158 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  store i32 %159, i32* %166, align 4
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %168 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 1
  store i32 %169, i32* %176, align 4
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %178 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 2
  store i32 %179, i32* %186, align 4
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %188 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  store i32 %189, i32* %196, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %199, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %207, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %205, %213
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %214, %217
  %219 = add nsw i32 %197, %218
  %220 = load i32, i32* @INT_MAX, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %156
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %223, i32 %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %226 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %226, i32* %21, align 4
  br label %757

227:                                              ; preds = %156
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %229, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %237, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %235, %243
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %19, align 4
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %252 = load i32, i32* %20, align 4
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %270, align 8
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 5
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %278, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %252, i32 %260, i32 %268, i32 %276, i32 %284)
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 5
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %287, align 8
  %289 = load i32, i32* %20, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %305, label %295

295:                                              ; preds = %227
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %297, align 8
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %343

305:                                              ; preds = %295, %227
  %306 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %307 = load i32, i32* @AV_LOG_ERROR, align 4
  %308 = load i32, i32* %20, align 4
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %310, align 8
  %312 = load i32, i32* %20, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 5
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %318, align 8
  %320 = load i32, i32* %20, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 5
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %326, align 8
  %328 = load i32, i32* %20, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 5
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %334, align 8
  %336 = load i32, i32* %20, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %306, i32 %307, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %308, i32 %316, i32 %324, i32 %332, i32 %340)
  %342 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %342, i32* %21, align 4
  br label %757

343:                                              ; preds = %295
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = load i32, i32* %20, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 5
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %351, %359
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = icmp sgt i32 %360, %363
  br i1 %364, label %387, label %365

365:                                              ; preds = %343
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 5
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %367, align 8
  %369 = load i32, i32* %20, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 5
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %375, align 8
  %377 = load i32, i32* %20, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %373, %381
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp sgt i32 %382, %385
  br i1 %386, label %387, label %425

387:                                              ; preds = %365, %343
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %389 = load i32, i32* @AV_LOG_ERROR, align 4
  %390 = load i32, i32* %20, align 4
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 5
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %392, align 8
  %394 = load i32, i32* %20, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 5
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %400, align 8
  %402 = load i32, i32* %20, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 5
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %408, align 8
  %410 = load i32, i32* %20, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 5
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %416, align 8
  %418 = load i32, i32* %20, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %388, i32 %389, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %390, i32 %398, i32 %406, i32 %414, i32 %422)
  %424 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %424, i32* %21, align 4
  br label %757

425:                                              ; preds = %365
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %20, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %20, align 4
  br label %152

430:                                              ; preds = %152
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 7
  store %struct.TYPE_25__* %432, %struct.TYPE_25__** %11, align 8
  %433 = load i32, i32* %19, align 4
  %434 = icmp slt i32 %433, 256
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %437 = call i32 @bytestream2_get_byte(%struct.TYPE_25__* %436)
  store i32 %437, i32* %18, align 4
  br label %456

438:                                              ; preds = %430
  %439 = load i32, i32* %19, align 4
  %440 = icmp slt i32 %439, 65536
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %443 = call i8* @bytestream2_get_le16(%struct.TYPE_25__* %442)
  %444 = ptrtoint i8* %443 to i32
  store i32 %444, i32* %18, align 4
  br label %455

445:                                              ; preds = %438
  %446 = load i32, i32* %19, align 4
  %447 = icmp slt i32 %446, 16777216
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %450 = call i32 @bytestream2_get_le24(%struct.TYPE_25__* %449)
  store i32 %450, i32* %18, align 4
  br label %454

451:                                              ; preds = %445
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %453 = call i32 @bytestream2_get_le32(%struct.TYPE_25__* %452)
  store i32 %453, i32* %18, align 4
  br label %454

454:                                              ; preds = %451, %448
  br label %455

455:                                              ; preds = %454, %441
  br label %456

456:                                              ; preds = %455, %435
  %457 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %458 = load i32, i32* %19, align 4
  %459 = load i32, i32* %18, align 4
  %460 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %457, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %458, i32 %459)
  %461 = load i32, i32* %18, align 4
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %456
  %464 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %465 = load i32, i32* @AV_LOG_ERROR, align 4
  %466 = load i32, i32* %18, align 4
  %467 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %464, i32 %465, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %466)
  %468 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %468, i32* %21, align 4
  br label %757

469:                                              ; preds = %456
  %470 = load i32, i32* %19, align 4
  %471 = load i32, i32* %18, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %488

473:                                              ; preds = %469
  %474 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %475 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_25__* %474)
  %476 = load i32, i32* %19, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %478, label %484

478:                                              ; preds = %473
  %479 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %480 = load i32, i32* @AV_LOG_ERROR, align 4
  %481 = load i32, i32* %19, align 4
  %482 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %479, i32 %480, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %481)
  %483 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %483, i32* %21, align 4
  br label %757

484:                                              ; preds = %473
  %485 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %486 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  store i32* %487, i32** %14, align 8
  br label %523

488:                                              ; preds = %469
  %489 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %490 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %24, align 4
  %492 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %493 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_25__* %492)
  %494 = load i32, i32* %18, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %502

496:                                              ; preds = %488
  %497 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %498 = load i32, i32* @AV_LOG_ERROR, align 4
  %499 = load i32, i32* %18, align 4
  %500 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %497, i32 %498, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %499)
  %501 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %501, i32* %21, align 4
  br label %757

502:                                              ; preds = %488
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i32 0, i32 6
  %505 = load i32*, i32** %504, align 8
  %506 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %507 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %506, i32 0, i32 0
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %18, align 4
  %510 = call i32 @uncompress(i32* %505, i32* %24, i32* %508, i32 %509)
  store i32 %510, i32* %21, align 4
  %511 = load i32, i32* %21, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %519

513:                                              ; preds = %502
  %514 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %515 = load i32, i32* @AV_LOG_ERROR, align 4
  %516 = load i32, i32* %21, align 4
  %517 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %514, i32 %515, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %516)
  %518 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %518, i32* %21, align 4
  br label %757

519:                                              ; preds = %502
  %520 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %521 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %520, i32 0, i32 6
  %522 = load i32*, i32** %521, align 8
  store i32* %522, i32** %14, align 8
  br label %523

523:                                              ; preds = %519, %484
  %524 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %525 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %526 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %525, i32 0, i32 4
  %527 = load %struct.TYPE_29__*, %struct.TYPE_29__** %526, align 8
  %528 = call i32 @ff_reget_buffer(%struct.TYPE_28__* %524, %struct.TYPE_29__* %527, i32 0)
  store i32 %528, i32* %21, align 4
  %529 = load i32, i32* %21, align 4
  %530 = icmp slt i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %523
  br label %757

532:                                              ; preds = %523
  %533 = load i32*, i32** %14, align 8
  store i32* %533, i32** %15, align 8
  store i32 0, i32* %20, align 4
  br label %534

534:                                              ; preds = %650, %532
  %535 = load i32, i32* %20, align 4
  %536 = load i32, i32* %17, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %653

538:                                              ; preds = %534
  %539 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %539, i32 0, i32 4
  %541 = load %struct.TYPE_29__*, %struct.TYPE_29__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %541, i32 0, i32 1
  %543 = load i32**, i32*** %542, align 8
  %544 = getelementptr inbounds i32*, i32** %543, i64 0
  %545 = load i32*, i32** %544, align 8
  %546 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %546, i32 0, i32 4
  %548 = load %struct.TYPE_29__*, %struct.TYPE_29__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %548, i32 0, i32 0
  %550 = load i32*, i32** %549, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 0
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %554 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %556, i32 0, i32 5
  %558 = load %struct.TYPE_24__*, %struct.TYPE_24__** %557, align 8
  %559 = load i32, i32* %20, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %558, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 4
  %564 = sub nsw i32 %555, %563
  %565 = sub nsw i32 %564, 1
  %566 = mul nsw i32 %552, %565
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %545, i64 %567
  %569 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %570 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %569, i32 0, i32 5
  %571 = load %struct.TYPE_24__*, %struct.TYPE_24__** %570, align 8
  %572 = load i32, i32* %20, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %571, i64 %573
  %575 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = mul nsw i32 %576, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %568, i64 %581
  store i32* %582, i32** %25, align 8
  %583 = load i32*, i32** %25, align 8
  %584 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %585 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %584, i32 0, i32 4
  %586 = load %struct.TYPE_29__*, %struct.TYPE_29__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %586, i32 0, i32 0
  %588 = load i32*, i32** %587, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 0
  %590 = load i32, i32* %589, align 4
  %591 = mul nsw i32 -1, %590
  %592 = load i32*, i32** %15, align 8
  %593 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %594 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %593, i32 0, i32 5
  %595 = load %struct.TYPE_24__*, %struct.TYPE_24__** %594, align 8
  %596 = load i32, i32* %20, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %595, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %602 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = mul nsw i32 %600, %603
  %605 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %606 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %605, i32 0, i32 5
  %607 = load %struct.TYPE_24__*, %struct.TYPE_24__** %606, align 8
  %608 = load i32, i32* %20, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %614 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = mul nsw i32 %612, %615
  %617 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %618 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %617, i32 0, i32 5
  %619 = load %struct.TYPE_24__*, %struct.TYPE_24__** %618, align 8
  %620 = load i32, i32* %20, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %622, i32 0, i32 3
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @av_image_copy_plane(i32* %583, i32 %591, i32* %592, i32 %604, i32 %616, i32 %624)
  %626 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %627 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %626, i32 0, i32 5
  %628 = load %struct.TYPE_24__*, %struct.TYPE_24__** %627, align 8
  %629 = load i32, i32* %20, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %628, i64 %630
  %632 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %635 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = mul nsw i32 %633, %636
  %638 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %639 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %638, i32 0, i32 5
  %640 = load %struct.TYPE_24__*, %struct.TYPE_24__** %639, align 8
  %641 = load i32, i32* %20, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %640, i64 %642
  %644 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %643, i32 0, i32 3
  %645 = load i32, i32* %644, align 4
  %646 = mul nsw i32 %637, %645
  %647 = load i32*, i32** %15, align 8
  %648 = sext i32 %646 to i64
  %649 = getelementptr inbounds i32, i32* %647, i64 %648
  store i32* %649, i32** %15, align 8
  br label %650

650:                                              ; preds = %538
  %651 = load i32, i32* %20, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %20, align 4
  br label %534

653:                                              ; preds = %534
  %654 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %655 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %656 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %655, i32 0, i32 4
  %657 = load %struct.TYPE_29__*, %struct.TYPE_29__** %656, align 8
  %658 = call i32 @av_frame_ref(%struct.TYPE_27__* %654, %struct.TYPE_29__* %657)
  store i32 %658, i32* %21, align 4
  %659 = load i32, i32* %21, align 4
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %662

661:                                              ; preds = %653
  br label %757

662:                                              ; preds = %653
  %663 = load i32, i32* %19, align 4
  %664 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %663, %666
  br i1 %667, label %668, label %674

668:                                              ; preds = %662
  %669 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %670 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %671 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %670, i32 0, i32 3
  store i32 %669, i32* %671, align 8
  %672 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %673 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %672, i32 0, i32 0
  store i32 1, i32* %673, align 8
  br label %678

674:                                              ; preds = %662
  %675 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %676 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %677 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %676, i32 0, i32 3
  store i32 %675, i32* %677, align 8
  br label %678

678:                                              ; preds = %674, %668
  %679 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %680 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %679, i32 0, i32 2
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %683 = icmp eq i64 %681, %682
  br i1 %683, label %684, label %723

684:                                              ; preds = %678
  %685 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %686 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %687 = call i32* @av_packet_get_side_data(%struct.TYPE_26__* %685, i32 %686, i32* %26)
  store i32* %687, i32** %27, align 8
  %688 = load i32*, i32** %27, align 8
  %689 = icmp ne i32* %688, null
  br i1 %689, label %690, label %703

690:                                              ; preds = %684
  %691 = load i32, i32* %26, align 4
  %692 = load i32, i32* @AVPALETTE_SIZE, align 4
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %694, label %703

694:                                              ; preds = %690
  %695 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %696 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %695, i32 0, i32 1
  store i32 1, i32* %696, align 4
  %697 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %698 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %697, i32 0, i32 3
  %699 = load i32*, i32** %698, align 8
  %700 = load i32*, i32** %27, align 8
  %701 = load i32, i32* @AVPALETTE_SIZE, align 4
  %702 = call i32 @memcpy(i32* %699, i32* %700, i32 %701)
  br label %712

703:                                              ; preds = %690, %684
  %704 = load i32*, i32** %27, align 8
  %705 = icmp ne i32* %704, null
  br i1 %705, label %706, label %711

706:                                              ; preds = %703
  %707 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %708 = load i32, i32* @AV_LOG_ERROR, align 4
  %709 = load i32, i32* %26, align 4
  %710 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %707, i32 %708, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %709)
  br label %711

711:                                              ; preds = %706, %703
  br label %712

712:                                              ; preds = %711, %694
  %713 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %714 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %713, i32 0, i32 2
  %715 = load i32**, i32*** %714, align 8
  %716 = getelementptr inbounds i32*, i32** %715, i64 1
  %717 = load i32*, i32** %716, align 8
  %718 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %719 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %718, i32 0, i32 3
  %720 = load i32*, i32** %719, align 8
  %721 = load i32, i32* @AVPALETTE_SIZE, align 4
  %722 = call i32 @memcpy(i32* %717, i32* %720, i32 %721)
  br label %723

723:                                              ; preds = %712, %678
  %724 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %725 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %724, i32 0, i32 2
  %726 = load i32, i32* %725, align 8
  %727 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %728 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 4
  %730 = icmp slt i32 %726, %729
  br i1 %730, label %731, label %737

731:                                              ; preds = %723
  %732 = load i32, i32* %19, align 4
  %733 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %734 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %733, i32 0, i32 2
  %735 = load i32, i32* %734, align 8
  %736 = add nsw i32 %735, %732
  store i32 %736, i32* %734, align 8
  br label %737

737:                                              ; preds = %731, %723
  %738 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %739 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 8
  %741 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %742 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %745 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %744, i32 0, i32 3
  %746 = load i32, i32* %745, align 8
  %747 = sub nsw i32 100, %746
  %748 = mul nsw i32 %743, %747
  %749 = sdiv i32 %748, 100
  %750 = icmp sge i32 %740, %749
  br i1 %750, label %751, label %753

751:                                              ; preds = %737
  %752 = load i32*, i32** %8, align 8
  store i32 1, i32* %752, align 4
  br label %753

753:                                              ; preds = %751, %737
  %754 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %755 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %754, i32 0, i32 0
  %756 = load i32, i32* %755, align 8
  store i32 %756, i32* %21, align 4
  br label %757

757:                                              ; preds = %753, %661, %531, %513, %496, %478, %463, %387, %305, %222, %137, %125, %118, %81
  %758 = load i32*, i32** %16, align 8
  %759 = call i32 @av_free(i32* %758)
  %760 = load i32, i32* %21, align 4
  store i32 %760, i32* %5, align 4
  br label %761

761:                                              ; preds = %757, %60, %46
  %762 = load i32, i32* %5, align 4
  ret i32 %762
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_25__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i8* @bytestream2_get_le16(%struct.TYPE_25__*) #1

declare dso_local i32 @av_fast_malloc(%struct.TYPE_24__**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_28__*, i8*, i32, ...) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @uncompress(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @bytestream2_get_le24(%struct.TYPE_25__*) #1

declare dso_local i32 @bytestream2_get_le32(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
