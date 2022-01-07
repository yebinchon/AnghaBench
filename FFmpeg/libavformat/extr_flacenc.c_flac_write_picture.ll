; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8* }
%struct.AVFormatContext = type { %struct.TYPE_13__**, i32*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i8*, i32 }
%struct.TYPE_15__ = type { i8* }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"No mimetype is known for stream %d, cannot write an attached picture.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@ff_id3v2_picture_types = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Duplicate attachment for type '%s'\0A\00", align 1
@AV_CODEC_ID_PNG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"File icon attachment must be a 32x32 PNG\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Picture block too big %d >= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*, %struct.TYPE_14__*)* @flac_write_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_write_picture(%struct.AVFormatContext* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AVFormatContext*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %20 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %23 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %26 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %27 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %28, i64 %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %17, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %270

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %60, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  br label %63

60:                                               ; preds = %46
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 1
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %9, align 8
  br label %40

63:                                               ; preds = %56, %40
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %67, i32 %68, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %270

75:                                               ; preds = %63
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %15, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_15__* @av_dict_get(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %106, %75
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %88 = call i32 @FF_ARRAY_ELEMS(i32* %87)
  %89 = icmp slt i32 %86, %88
  br label %90

90:                                               ; preds = %85, %82
  %91 = phi i1 [ false, %82 ], [ %89, %85 ]
  br i1 %91, label %92, label %109

92:                                               ; preds = %90
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_strcasecmp(i8* %95, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %17, align 4
  br label %109

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %82

109:                                              ; preds = %103, %90
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = and i32 %115, 6
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %109
  %119 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %119, i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %270

129:                                              ; preds = %109
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AV_CODEC_ID_PNG, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 32
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 32
  br i1 %153, label %154, label %160

154:                                              ; preds = %147, %140, %132
  %155 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %155, i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %3, align 4
  br label %270

160:                                              ; preds = %147, %129
  %161 = load i32, i32* %17, align 4
  %162 = shl i32 1, %161
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.TYPE_15__* @av_dict_get(i32 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %10, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %12, align 8
  br label %176

176:                                              ; preds = %172, %160
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 @strlen(i8* %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 8, %179
  %181 = add nsw i32 %180, 4
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 4
  %185 = add nsw i32 %184, 4
  %186 = add nsw i32 %185, 4
  %187 = add nsw i32 %186, 4
  %188 = add nsw i32 %187, 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %188, %191
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %18, align 4
  %194 = icmp sge i32 %193, 16777216
  br i1 %194, label %195, label %202

195:                                              ; preds = %176
  %196 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %197 = load i32, i32* @AV_LOG_ERROR, align 4
  %198 = load i32, i32* %18, align 4
  %199 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %196, i32 %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 16777216)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = call i32 @AVERROR(i32 %200)
  store i32 %201, i32* %3, align 4
  br label %270

202:                                              ; preds = %176
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @avio_w8(i32* %203, i32 6)
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %18, align 4
  %207 = call i32 @avio_wb24(i32* %205, i32 %206)
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @avio_wb32(i32* %208, i32 %209)
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @avio_wb32(i32* %211, i32 %212)
  %214 = load i32*, i32** %7, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @avio_write(i32* %214, i8* %215, i32 %216)
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %16, align 4
  %220 = call i32 @avio_wb32(i32* %218, i32 %219)
  %221 = load i32*, i32** %7, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @avio_write(i32* %221, i8* %222, i32 %223)
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @avio_wb32(i32* %225, i32 %230)
  %232 = load i32*, i32** %7, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @avio_wb32(i32* %232, i32 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32* @av_pix_fmt_desc_get(i32 %243)
  store i32* %244, i32** %8, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %202
  %247 = load i32*, i32** %7, align 8
  %248 = load i32*, i32** %8, align 8
  %249 = call i32 @av_get_bits_per_pixel(i32* %248)
  %250 = call i32 @avio_wb32(i32* %247, i32 %249)
  br label %254

251:                                              ; preds = %202
  %252 = load i32*, i32** %7, align 8
  %253 = call i32 @avio_wb32(i32* %252, i32 0)
  br label %254

254:                                              ; preds = %251, %246
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @avio_wb32(i32* %255, i32 0)
  %257 = load i32*, i32** %7, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @avio_wb32(i32* %257, i32 %260)
  %262 = load i32*, i32** %7, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @avio_write(i32* %262, i8* %265, i32 %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %254, %195, %154, %118, %66, %38
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_15__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_strcasecmp(i8*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_get_bits_per_pixel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
