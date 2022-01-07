; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32**, i32 }

@SGI_HEADER_SIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"buf_size too small (%d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SGI_MAGIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"bad magic number\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"wrong channel number\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"wrong dimension number\0A\00", align 1
@SGI_GRAYSCALE = common dso_local global i8* null, align 8
@AV_PIX_FMT_GRAY16BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@SGI_RGB = common dso_local global i8* null, align 8
@AV_PIX_FMT_RGB48BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@SGI_RGBA = common dso_local global i8* null, align 8
@AV_PIX_FMT_RGBA64BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGBA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"wrong picture format\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bytestream2_init(i32* %23, i32 %26, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = call i64 @bytestream2_get_bytes_left(i32* %32)
  %34 = load i64, i64* @SGI_HEADER_SIZE, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %5, align 4
  br label %250

44:                                               ; preds = %4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = call i8* @bytestream2_get_be16u(i32* %46)
  %48 = load i8*, i8** @SGI_MAGIC, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %51, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %250

55:                                               ; preds = %44
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = call i8* @bytestream2_get_byteu(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = call i8* @bytestream2_get_byteu(i32* %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = call i8* @bytestream2_get_be16u(i32* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = call i8* @bytestream2_get_be16u(i32* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = call i8* @bytestream2_get_be16u(i32* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = call i8* @bytestream2_get_be16u(i32* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %100

90:                                               ; preds = %55
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %96, i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %5, align 4
  br label %250

100:                                              ; preds = %90, %55
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 2
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 3
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %107, i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %5, align 4
  br label %250

111:                                              ; preds = %103, %100
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** @SGI_GRAYSCALE, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @AV_PIX_FMT_GRAY16BE, align 4
  br label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %175

130:                                              ; preds = %111
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** @SGI_RGB, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @AV_PIX_FMT_RGB48BE, align 4
  br label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %174

149:                                              ; preds = %130
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 5
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** @SGI_RGBA, align 8
  %154 = icmp eq i8* %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @AV_PIX_FMT_RGBA64BE, align 4
  br label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %173

168:                                              ; preds = %149
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %169, i32 %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %5, align 4
  br label %250

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174, %126
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ff_set_dimensions(%struct.TYPE_16__* %176, i8* %179, i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %175
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %5, align 4
  br label %250

188:                                              ; preds = %175
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %191 = call i32 @ff_get_buffer(%struct.TYPE_16__* %189, %struct.TYPE_15__* %190, i32 0)
  store i32 %191, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %5, align 4
  br label %250

195:                                              ; preds = %188
  %196 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load i32**, i32*** %202, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 0
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %15, align 8
  %206 = load i32*, i32** %15, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %206, i64 %216
  store i32* %217, i32** %16, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = load i64, i64* @SGI_HEADER_SIZE, align 8
  %228 = load i32, i32* @SEEK_SET, align 4
  %229 = call i32 @bytestream2_seek(i32* %226, i64 %227, i32 %228)
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %195
  %233 = load i32*, i32** %16, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %235 = call i32 @read_rle_sgi(i32* %233, %struct.TYPE_13__* %234)
  store i32 %235, i32* %14, align 4
  br label %240

236:                                              ; preds = %195
  %237 = load i32*, i32** %15, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %239 = call i32 @read_uncompressed_sgi(i32* %237, %struct.TYPE_13__* %238)
  store i32 %239, i32* %14, align 4
  br label %240

240:                                              ; preds = %236, %232
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %5, align 4
  br label %250

245:                                              ; preds = %240
  %246 = load i32*, i32** %8, align 8
  store i32 1, i32* %246, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %245, %243, %193, %186, %168, %106, %95, %50, %36
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i8* @bytestream2_get_be16u(i32*) #1

declare dso_local i8* @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i64, i32) #1

declare dso_local i32 @read_rle_sgi(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @read_uncompressed_sgi(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
