; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dds.c_dds_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dds.c_dds_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i64, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_26__*, i32*, i32)*, i32, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32**, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i32, i32, i64, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Frame is too small (%d).\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid DDS header.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid image size %dx%d.\0A\00", align 1
@TEXTURE_BLOCK_W = common dso_local global i32 0, align 4
@TEXTURE_BLOCK_H = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Found %d mipmaps (ignored).\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Compressed Buffer is too small (%d < %d).\0A\00", align 1
@decompress_texture_thread = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Buffer is too small (%d < %d).\0A\00", align 1
@DDS_NONE = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i8*, i32*, %struct.TYPE_25__*)* @dds_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dds_decode(%struct.TYPE_27__* %0, i8* %1, i32* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %10, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %12, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 7
  %34 = call i32 @ff_texturedsp_init(i32* %33)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bytestream2_init(%struct.TYPE_23__* %35, i32 %38, i32 %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %44 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %43)
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %53

46:                                               ; preds = %4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %50 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %49)
  %51 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %47, i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %521

53:                                               ; preds = %4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %55 = call i32 @bytestream2_get_le32(%struct.TYPE_23__* %54)
  %56 = call i32 @MKTAG(i8 signext 68, i8 signext 68, i8 signext 83, i8 signext 32)
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %60 = call i32 @bytestream2_get_le32(%struct.TYPE_23__* %59)
  %61 = icmp ne i32 %60, 124
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %53
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %63, i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %5, align 4
  br label %521

67:                                               ; preds = %58
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %69 = call i32 @bytestream2_skip(%struct.TYPE_23__* %68, i32 4)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %71 = call i32 @bytestream2_get_le32(%struct.TYPE_23__* %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = call i32 @bytestream2_get_le32(%struct.TYPE_23__* %72)
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @ff_set_dimensions(%struct.TYPE_27__* %74, i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %67
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %81, i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  br label %521

91:                                               ; preds = %67
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TEXTURE_BLOCK_W, align 4
  %96 = call i8* @FFALIGN(i32 %94, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %104 = call i8* @FFALIGN(i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %109 = call i32 @bytestream2_skip(%struct.TYPE_23__* %108, i32 4)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = call i32 @bytestream2_skip(%struct.TYPE_23__* %110, i32 4)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %113 = call i32 @bytestream2_get_le32(%struct.TYPE_23__* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %91
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %118 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %117, i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %91
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %123 = call i32 @parse_pixel_format(%struct.TYPE_27__* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %5, align 4
  br label %521

128:                                              ; preds = %121
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %131 = call i32 @ff_get_buffer(%struct.TYPE_27__* %129, %struct.TYPE_26__* %130, i32 0)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %5, align 4
  br label %521

136:                                              ; preds = %128
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %196

141:                                              ; preds = %136
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %146 = sdiv i32 %144, %145
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TEXTURE_BLOCK_W, align 4
  %151 = sdiv i32 %149, %150
  %152 = mul nsw i32 %146, %151
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  store i32 %156, i32* %17, align 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %164 = sdiv i32 %162, %163
  %165 = call i32 @av_clip(i32 %159, i32 1, i32 %164)
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %169 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %168)
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %141
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %176 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %175)
  %177 = load i32, i32* %17, align 4
  %178 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %173, i32 %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %179, i32* %5, align 4
  br label %521

180:                                              ; preds = %141
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 5
  %188 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_26__*, i32*, i32)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_26__*, i32*, i32)** %187, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %190 = load i32, i32* @decompress_texture_thread, align 4
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %188(%struct.TYPE_27__* %189, i32 %190, %struct.TYPE_26__* %191, i32* null, i32 %194)
  br label %501

196:                                              ; preds = %136
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %368, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %206, label %368

206:                                              ; preds = %201
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %368

212:                                              ; preds = %206
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 0
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %18, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = load i32**, i32*** %220, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @bytestream2_get_buffer(%struct.TYPE_23__* %218, i32* %223, i32 64)
  store i32 0, i32* %21, align 4
  br label %225

225:                                              ; preds = %290, %212
  %226 = load i32, i32* %21, align 4
  %227 = icmp slt i32 %226, 16
  br i1 %227, label %228, label %293

228:                                              ; preds = %225
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = load i32**, i32*** %230, align 8
  %232 = getelementptr inbounds i32*, i32** %231, i64 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %21, align 4
  %235 = mul nsw i32 %234, 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 0
  %240 = load i32**, i32*** %239, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %21, align 4
  %244 = mul nsw i32 %243, 4
  %245 = add nsw i32 2, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 0
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %21, align 4
  %256 = mul nsw i32 %255, 4
  %257 = add nsw i32 1, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 8
  %262 = add nsw i32 %249, %261
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = load i32**, i32*** %264, align 8
  %266 = getelementptr inbounds i32*, i32** %265, i64 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %21, align 4
  %269 = mul nsw i32 %268, 4
  %270 = add nsw i32 0, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 16
  %275 = add nsw i32 %262, %274
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = load i32**, i32*** %277, align 8
  %279 = getelementptr inbounds i32*, i32** %278, i64 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %21, align 4
  %282 = mul nsw i32 %281, 4
  %283 = add nsw i32 3, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 %286, 24
  %288 = add i32 %275, %287
  %289 = call i32 @AV_WN32(i32* %237, i32 %288)
  br label %290

290:                                              ; preds = %228
  %291 = load i32, i32* %21, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %21, align 4
  br label %225

293:                                              ; preds = %225
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 1
  store i32 1, i32* %295, align 8
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %297 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %296)
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %300, %303
  %305 = sdiv i32 %304, 2
  %306 = icmp slt i32 %297, %305
  br i1 %306, label %307, label %322

307:                                              ; preds = %293
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %309 = load i32, i32* @AV_LOG_ERROR, align 4
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %311 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %310)
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = mul nsw i32 %314, %317
  %319 = sdiv i32 %318, 2
  %320 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %308, i32 %309, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %311, i32 %319)
  %321 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %321, i32* %5, align 4
  br label %521

322:                                              ; preds = %293
  store i32 0, i32* %20, align 4
  br label %323

323:                                              ; preds = %364, %322
  %324 = load i32, i32* %20, align 4
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %367

329:                                              ; preds = %323
  store i32 0, i32* %19, align 4
  br label %330

330:                                              ; preds = %352, %329
  %331 = load i32, i32* %19, align 4
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %355

336:                                              ; preds = %330
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %338 = call i32 @bytestream2_get_byte(%struct.TYPE_23__* %337)
  store i32 %338, i32* %22, align 4
  %339 = load i32, i32* %22, align 4
  %340 = and i32 %339, 15
  %341 = load i32*, i32** %18, align 8
  %342 = load i32, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 %340, i32* %344, align 4
  %345 = load i32, i32* %22, align 4
  %346 = ashr i32 %345, 4
  %347 = load i32*, i32** %18, align 8
  %348 = load i32, i32* %19, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  store i32 %346, i32* %351, align 4
  br label %352

352:                                              ; preds = %336
  %353 = load i32, i32* %19, align 4
  %354 = add nsw i32 %353, 2
  store i32 %354, i32* %19, align 4
  br label %330

355:                                              ; preds = %330
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 6
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %18, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  store i32* %363, i32** %18, align 8
  br label %364

364:                                              ; preds = %355
  %365 = load i32, i32* %20, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %20, align 4
  br label %323

367:                                              ; preds = %323
  br label %500

368:                                              ; preds = %206, %201, %196
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 0, i32 4
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @av_image_get_linesize(i64 %371, i32 %374, i32 0)
  store i32 %375, i32* %23, align 4
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %459

380:                                              ; preds = %368
  %381 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 0
  %384 = load i32**, i32*** %383, align 8
  %385 = getelementptr inbounds i32*, i32** %384, i64 1
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 @bytestream2_get_buffer(%struct.TYPE_23__* %381, i32* %386, i32 1024)
  store i32 0, i32* %24, align 4
  br label %388

388:                                              ; preds = %453, %380
  %389 = load i32, i32* %24, align 4
  %390 = icmp slt i32 %389, 256
  br i1 %390, label %391, label %456

391:                                              ; preds = %388
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 0
  %394 = load i32**, i32*** %393, align 8
  %395 = getelementptr inbounds i32*, i32** %394, i64 1
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %24, align 4
  %398 = mul nsw i32 %397, 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %396, i64 %399
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 0
  %403 = load i32**, i32*** %402, align 8
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %24, align 4
  %407 = mul nsw i32 %406, 4
  %408 = add nsw i32 2, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %405, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = shl i32 %411, 0
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i32 0, i32 0
  %415 = load i32**, i32*** %414, align 8
  %416 = getelementptr inbounds i32*, i32** %415, i64 1
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %24, align 4
  %419 = mul nsw i32 %418, 4
  %420 = add nsw i32 1, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = shl i32 %423, 8
  %425 = add nsw i32 %412, %424
  %426 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 0
  %428 = load i32**, i32*** %427, align 8
  %429 = getelementptr inbounds i32*, i32** %428, i64 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %24, align 4
  %432 = mul nsw i32 %431, 4
  %433 = add nsw i32 0, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %430, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = shl i32 %436, 16
  %438 = add nsw i32 %425, %437
  %439 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 0
  %441 = load i32**, i32*** %440, align 8
  %442 = getelementptr inbounds i32*, i32** %441, i64 1
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %24, align 4
  %445 = mul nsw i32 %444, 4
  %446 = add nsw i32 3, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %443, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = shl i32 %449, 24
  %451 = add i32 %438, %450
  %452 = call i32 @AV_WN32(i32* %400, i32 %451)
  br label %453

453:                                              ; preds = %391
  %454 = load i32, i32* %24, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %24, align 4
  br label %388

456:                                              ; preds = %388
  %457 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %457, i32 0, i32 1
  store i32 1, i32* %458, align 8
  br label %459

459:                                              ; preds = %456, %368
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %461 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %460)
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %23, align 4
  %466 = mul nsw i32 %464, %465
  %467 = icmp slt i32 %461, %466
  br i1 %467, label %468, label %480

468:                                              ; preds = %459
  %469 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %470 = load i32, i32* @AV_LOG_ERROR, align 4
  %471 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %472 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_23__* %471)
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %23, align 4
  %477 = mul nsw i32 %475, %476
  %478 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %469, i32 %470, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %472, i32 %477)
  %479 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %479, i32* %5, align 4
  br label %521

480:                                              ; preds = %459
  %481 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %482 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %481, i32 0, i32 0
  %483 = load i32**, i32*** %482, align 8
  %484 = getelementptr inbounds i32*, i32** %483, i64 0
  %485 = load i32*, i32** %484, align 8
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 6
  %488 = load i32*, i32** %487, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %23, align 4
  %495 = load i32, i32* %23, align 4
  %496 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @av_image_copy_plane(i32* %485, i32 %490, i32 %493, i32 %494, i32 %495, i32 %498)
  br label %500

500:                                              ; preds = %480, %367
  br label %501

501:                                              ; preds = %500, %180
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* @DDS_NONE, align 8
  %506 = icmp ne i64 %504, %505
  br i1 %506, label %507, label %511

507:                                              ; preds = %501
  %508 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %509 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %510 = call i32 @run_postproc(%struct.TYPE_27__* %508, %struct.TYPE_26__* %509)
  br label %511

511:                                              ; preds = %507, %501
  %512 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %513 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 5
  store i32 %512, i32* %514, align 8
  %515 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %516 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %515, i32 0, i32 4
  store i32 1, i32* %516, align 4
  %517 = load i32*, i32** %8, align 8
  store i32 1, i32* %517, align 4
  %518 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %519 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  store i32 %520, i32* %5, align 4
  br label %521

521:                                              ; preds = %511, %468, %307, %172, %134, %126, %80, %62, %46
  %522 = load i32, i32* %5, align 4
  ret i32 %522
}

declare dso_local i32 @ff_texturedsp_init(i32*) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_le32(%struct.TYPE_23__*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @parse_pixel_format(%struct.TYPE_27__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @AV_WN32(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_23__*) #1

declare dso_local i32 @av_image_get_linesize(i64, i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @run_postproc(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
