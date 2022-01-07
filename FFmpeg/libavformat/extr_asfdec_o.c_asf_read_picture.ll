; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_17__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid attached picture size: %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_id3v2_picture_types = common dso_local global i8** null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown attached picture type: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unknown attached picture mimetype: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid attached picture data size: %d >= %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"av_dict_set failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @asf_read_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_picture(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %6, align 8
  %21 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %8, align 8
  %23 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %28, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %3, align 4
  br label %252

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @avio_r8(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i8**, i8*** @ff_id3v2_picture_types, align 8
  %42 = call i32 @FF_ARRAY_ELEMS(i8** %41)
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %33
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load i32, i32* @AV_LOG_WARNING, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %48, i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @avio_rl32(i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 4
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %64 = call i64 @avio_get_str16le(i32 %61, i32 %62, i8* %63, i32 64)
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %87, %52
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %80 = call i32 @strncmp(i32 %78, i8* %79, i32 64)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  br label %90

87:                                               ; preds = %75
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 1
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %8, align 8
  br label %69

90:                                               ; preds = %82, %69
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %99 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %96, i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  store i32 0, i32* %3, align 4
  br label %252

100:                                              ; preds = %90
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %105, i32 %106, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %3, align 4
  br label %252

111:                                              ; preds = %100
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  %115 = mul nsw i32 %114, 2
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i8* @av_malloc(i32 %117)
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %111
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %3, align 4
  br label %252

124:                                              ; preds = %111
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i64 @avio_get_str16le(i32 %127, i32 %130, i8* %131, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %5, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @av_get_packet(i32 %140, %struct.TYPE_19__* %7, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %124
  br label %248

146:                                              ; preds = %124
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %147, i32* null)
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %12, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %150 = icmp ne %struct.TYPE_18__* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = call i32 @AVERROR(i32 %152)
  store i32 %153, i32* %13, align 4
  br label %248

154:                                              ; preds = %146
  %155 = call %struct.TYPE_21__* @av_mallocz(i32 8)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %158, i64 %161
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %162, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %164, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %165, i64 %168
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  store %struct.TYPE_21__* %170, %struct.TYPE_21__** %17, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %172 = icmp ne %struct.TYPE_21__* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %154
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = call i32 @AVERROR(i32 %174)
  store i32 %175, i32* %13, align 4
  br label %248

176:                                              ; preds = %154
  %177 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  store i32 %182, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = bitcast %struct.TYPE_19__* %195 to i8*
  %197 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 12, i1 false)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  store i32 %200, i32* %205, align 4
  %206 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load i8, i8* %216, align 1
  %218 = icmp ne i8 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %176
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %224 = call i64 @av_dict_set(i32* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %222, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = load i32, i32* @AV_LOG_WARNING, align 4
  %229 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %227, i32 %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %230

230:                                              ; preds = %226, %219
  br label %233

231:                                              ; preds = %176
  %232 = call i32 @av_freep(i8** %11)
  br label %233

233:                                              ; preds = %231, %230
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load i8**, i8*** @ff_id3v2_picture_types, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @av_dict_set(i32* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %240, i32 0)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %233
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = load i32, i32* @AV_LOG_WARNING, align 4
  %246 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %244, i32 %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %247

247:                                              ; preds = %243, %233
  store i32 0, i32* %3, align 4
  br label %252

248:                                              ; preds = %173, %151, %145
  %249 = call i32 @av_freep(i8** %11)
  %250 = call i32 @av_packet_unref(%struct.TYPE_19__* %7)
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %248, %247, %121, %104, %95, %27
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #2

declare dso_local i32 @avio_r8(i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #2

declare dso_local i32 @avio_rl32(i32) #2

declare dso_local i64 @avio_get_str16le(i32, i32, i8*, i32) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

declare dso_local i8* @av_malloc(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_19__*, i32) #2

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #2

declare dso_local %struct.TYPE_21__* @av_mallocz(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @av_freep(i8**) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
