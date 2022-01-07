; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_brenderpix.c_pix_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_brenderpix.c_pix_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32*, i64* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Not a BRender PIX file.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HEADER1_CHUNK = common dso_local global i32 0, align 4
@HEADER2_CHUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid chunk type %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid header length.\0A\00", align 1
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB555BE = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB565BE = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_0RGB = common dso_local global i64 0, align 8
@AV_PIX_FMT_ARGB = common dso_local global i64 0, align 8
@AV_PIX_FMT_YA8 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"Format %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid palette header length.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Palette not in RGB format\00", align 1
@IMAGE_DATA_CHUNK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid palette data.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Using default palette, colors might be off.\0A\00", align 1
@std_pal_table = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Invalid image data.\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @pix_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__, align 4
  %21 = alloca %struct.TYPE_13__, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %10, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bytestream2_init(i32* %13, i64 %28, i32 %31)
  %33 = call i32 @bytestream2_get_be32(i32* %13)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = call i32 @bytestream2_get_be32(i32* %13)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = call i32 @bytestream2_get_be32(i32* %13)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = call i32 @bytestream2_get_be32(i32* %13)
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = icmp ne i32 %42, 18
  br i1 %43, label %56, label %44

44:                                               ; preds = %4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %52, %48, %44, %4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %57, i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %5, align 4
  br label %299

61:                                               ; preds = %52
  %62 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @HEADER1_CHUNK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @HEADER2_CHUNK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %71, i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %5, align 4
  br label %299

76:                                               ; preds = %66, %61
  %77 = call i32 @pix_decode_header(%struct.TYPE_13__* %20, i32* %13)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %81, i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %299

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %116 [
    i32 3, label %88
    i32 4, label %92
    i32 5, label %96
    i32 6, label %100
    i32 7, label %104
    i32 8, label %108
    i32 18, label %112
  ]

88:                                               ; preds = %85
  %89 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  store i32 1, i32* %14, align 4
  br label %122

92:                                               ; preds = %85
  %93 = load i64, i64* @AV_PIX_FMT_RGB555BE, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i32 2, i32* %14, align 4
  br label %122

96:                                               ; preds = %85
  %97 = load i64, i64* @AV_PIX_FMT_RGB565BE, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i32 2, i32* %14, align 4
  br label %122

100:                                              ; preds = %85
  %101 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  store i32 3, i32* %14, align 4
  br label %122

104:                                              ; preds = %85
  %105 = load i64, i64* @AV_PIX_FMT_0RGB, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  store i32 4, i32* %14, align 4
  br label %122

108:                                              ; preds = %85
  %109 = load i64, i64* @AV_PIX_FMT_ARGB, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  store i32 4, i32* %14, align 4
  br label %122

112:                                              ; preds = %85
  %113 = load i64, i64* @AV_PIX_FMT_YA8, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  store i32 2, i32* %14, align 4
  br label %122

116:                                              ; preds = %85
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.TYPE_16__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %121, i32* %5, align 4
  br label %299

122:                                              ; preds = %112, %108, %104, %100, %96, %92, %88
  %123 = load i32, i32* %14, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul i32 %123, %125
  store i32 %126, i32* %18, align 4
  %127 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = mul i32 %129, %130
  %132 = icmp ult i32 %127, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %5, align 4
  br label %299

135:                                              ; preds = %122
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ff_set_dimensions(%struct.TYPE_16__* %136, i32 %138, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %299

145:                                              ; preds = %135
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %148 = call i32 @ff_get_buffer(%struct.TYPE_16__* %146, %struct.TYPE_15__* %147, i32 0)
  store i32 %148, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %299

152:                                              ; preds = %145
  %153 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %153, i32* %16, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %224

159:                                              ; preds = %152
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @HEADER1_CHUNK, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @HEADER2_CHUNK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %224

167:                                              ; preds = %163, %159
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 4
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %22, align 8
  %174 = call i32 @pix_decode_header(%struct.TYPE_13__* %21, i32* %13)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = load i32, i32* @AV_LOG_ERROR, align 4
  %180 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %178, i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %5, align 4
  br label %299

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 7
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %188 = call i32 (%struct.TYPE_16__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_16__* %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %182
  %190 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %190, i32* %16, align 4
  %191 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %191, i32* %17, align 4
  %192 = call i32 @bytestream2_skip(i32* %13, i32 8)
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @IMAGE_DATA_CHUNK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 1032
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %201 = icmp slt i32 %200, 1032
  br i1 %201, label %202, label %207

202:                                              ; preds = %199, %196, %189
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %203, i32 %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %206 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %206, i32* %5, align 4
  br label %299

207:                                              ; preds = %199
  store i32 0, i32* %12, align 4
  br label %208

208:                                              ; preds = %216, %207
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %209, 256
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = call i32 @bytestream2_get_be32u(i32* %13)
  %213 = or i32 -16777216, %212
  %214 = load i32*, i32** %22, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %22, align 8
  store i32 %213, i32* %214, align 4
  br label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %208

219:                                              ; preds = %208
  %220 = call i32 @bytestream2_skip(i32* %13, i32 8)
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %223, i32* %16, align 4
  br label %246

224:                                              ; preds = %163, %152
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %224
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 4
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 1
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to i32*
  store i32* %236, i32** %23, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = load i32, i32* @AV_LOG_WARNING, align 4
  %239 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %237, i32 %238, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %240 = load i32*, i32** %23, align 8
  %241 = load i32, i32* @std_pal_table, align 4
  %242 = call i32 @memcpy(i32* %240, i32 %241, i32 1024)
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %230, %224
  br label %246

246:                                              ; preds = %245, %219
  %247 = call i32 @bytestream2_get_be32(i32* %13)
  store i32 %247, i32* %17, align 4
  %248 = call i32 @bytestream2_skip(i32* %13, i32 8)
  %249 = call i32 @bytestream2_get_bytes_left(i32* %13)
  store i32 %249, i32* %19, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* @IMAGE_DATA_CHUNK, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %264, label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %18, align 4
  %260 = udiv i32 %258, %259
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp ult i32 %260, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %257, %253, %246
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %266 = load i32, i32* @AV_LOG_ERROR, align 4
  %267 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %265, i32 %266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %268 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %268, i32* %5, align 4
  br label %299

269:                                              ; preds = %257
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 4
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @bytestream2_tell(i32* %13)
  %284 = add nsw i64 %282, %283
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %18, align 4
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @av_image_copy_plane(i64 %274, i32 %279, i64 %284, i32 %285, i32 %286, i32 %288)
  %290 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  %295 = load i32*, i32** %8, align 8
  store i32 1, i32* %295, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %5, align 4
  br label %299

299:                                              ; preds = %269, %264, %202, %177, %150, %143, %133, %116, %80, %70, %56
  %300 = load i32, i32* %5, align 4
  ret i32 %300
}

declare dso_local i32 @bytestream2_init(i32*, i64, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @pix_decode_header(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be32u(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
