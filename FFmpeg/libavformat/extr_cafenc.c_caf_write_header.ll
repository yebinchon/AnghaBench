; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__**, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i8*, i64, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }

@ff_codec_caf_tags = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CAF files have exactly one stream\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"muxing codec currently unsupported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_CODEC_ID_OPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Only mono and stereo are supported for Opus\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unsupported codec\0A\00", align 1
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Muxing variable packet size not supported on non seekable output\0A\00", align 1
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"caff\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@AV_CODEC_ID_ALAC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"kuki\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\00\00\00\0Cfrmaalac\00", align 1
@AV_CODEC_ID_AMR_NB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"\00\00\00\0Cfrmasamr\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"samrFFMP\00", align 1
@AV_CODEC_ID_QDM2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_QDMC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @caf_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caf_write_header(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %13, %struct.TYPE_25__** %4, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %5, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  %24 = load i32, i32* @ff_codec_caf_tags, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ff_codec_get_tag(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(%struct.TYPE_26__* %37, i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %329

42:                                               ; preds = %1
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %51 [
    i32 128, label %46
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(%struct.TYPE_26__* %47, i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %50, i32* %2, align 4
  br label %329

51:                                               ; preds = %42
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AV_CODEC_ID_OPUS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 @av_log(%struct.TYPE_26__* %63, i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %2, align 4
  br label %329

67:                                               ; preds = %57, %51
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 @av_log(%struct.TYPE_26__* %71, i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %329

75:                                               ; preds = %67
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = call i32 @av_log(%struct.TYPE_26__* %88, i32 %89, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %2, align 4
  br label %329

92:                                               ; preds = %80, %75
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 576
  br i1 %100, label %101, label %112

101:                                              ; preds = %98, %92
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @samples_per_packet(i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %101, %98
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %116 = call i32 @avio_wb16(%struct.TYPE_25__* %115, i32 1)
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %118 = call i32 @avio_wb16(%struct.TYPE_25__* %117, i32 0)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = call i32 @avio_wb64(%struct.TYPE_25__* %121, i32 32)
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @av_double2int(i32 %126)
  %128 = call i32 @avio_wb64(%struct.TYPE_25__* %123, i32 %127)
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @avio_wl32(%struct.TYPE_25__* %129, i32 %130)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @codec_flags(i32 %135)
  %137 = call i32 @avio_wb32(%struct.TYPE_25__* %132, i32 %136)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @avio_wb32(%struct.TYPE_25__* %138, i32 %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @avio_wb32(%struct.TYPE_25__* %143, i32 %144)
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @avio_wb32(%struct.TYPE_25__* %146, i32 %149)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @av_get_bits_per_sample(i32 %154)
  %156 = call i32 @avio_wb32(%struct.TYPE_25__* %151, i32 %155)
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %112
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %163 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %165 = call i32 @avio_wb64(%struct.TYPE_25__* %164, i32 12)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ff_mov_write_chan(%struct.TYPE_25__* %166, i64 %169)
  br label %171

171:                                              ; preds = %161, %112
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @AV_CODEC_ID_ALAC, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %171
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %179 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 12, %183
  %185 = call i32 @avio_wb64(%struct.TYPE_25__* %180, i32 %184)
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %187 = call i32 @avio_write(%struct.TYPE_25__* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @avio_write(%struct.TYPE_25__* %188, i8* %191, i32 %194)
  br label %251

196:                                              ; preds = %171
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @AV_CODEC_ID_AMR_NB, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %196
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %204 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %206 = call i32 @avio_wb64(%struct.TYPE_25__* %205, i32 29)
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %208 = call i32 @avio_write(%struct.TYPE_25__* %207, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 12)
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = call i32 @avio_wb32(%struct.TYPE_25__* %209, i32 17)
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %212 = call i32 @avio_write(%struct.TYPE_25__* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %214 = call i32 @avio_w8(%struct.TYPE_25__* %213, i32 0)
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %216 = call i32 @avio_wb16(%struct.TYPE_25__* %215, i32 33279)
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %218 = call i32 @avio_w8(%struct.TYPE_25__* %217, i32 0)
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %220 = call i32 @avio_w8(%struct.TYPE_25__* %219, i32 1)
  br label %250

221:                                              ; preds = %196
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @AV_CODEC_ID_QDM2, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @AV_CODEC_ID_QDMC, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %227, %221
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %235 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @avio_wb64(%struct.TYPE_25__* %236, i32 %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 5
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @avio_write(%struct.TYPE_25__* %241, i8* %244, i32 %247)
  br label %249

249:                                              ; preds = %233, %227
  br label %250

250:                                              ; preds = %249, %202
  br label %251

251:                                              ; preds = %250, %177
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %253 = call i32 @ff_standardize_creation_time(%struct.TYPE_26__* %252)
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @av_dict_count(i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %316

259:                                              ; preds = %251
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %261 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %262

262:                                              ; preds = %270, %259
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %267 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %268 = call %struct.TYPE_27__* @av_dict_get(i32 %265, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_27__* %266, i32 %267)
  store %struct.TYPE_27__* %268, %struct.TYPE_27__** %7, align 8
  %269 = icmp ne %struct.TYPE_27__* %268, null
  br i1 %269, label %270, label %285

270:                                              ; preds = %262
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @strlen(i32 %273)
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @strlen(i32 %277)
  %279 = add nsw i64 %274, %278
  %280 = add nsw i64 %279, 2
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %9, align 4
  br label %262

285:                                              ; preds = %262
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 4
  %289 = call i32 @avio_wb64(%struct.TYPE_25__* %286, i32 %288)
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @av_dict_count(i32 %293)
  %295 = call i32 @avio_wb32(%struct.TYPE_25__* %290, i32 %294)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  br label %296

296:                                              ; preds = %304, %285
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %301 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %302 = call %struct.TYPE_27__* @av_dict_get(i32 %299, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_27__* %300, i32 %301)
  store %struct.TYPE_27__* %302, %struct.TYPE_27__** %7, align 8
  %303 = icmp ne %struct.TYPE_27__* %302, null
  br i1 %303, label %304, label %315

304:                                              ; preds = %296
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @avio_put_str(%struct.TYPE_25__* %305, i32 %308)
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @avio_put_str(%struct.TYPE_25__* %310, i32 %313)
  br label %296

315:                                              ; preds = %296
  br label %316

316:                                              ; preds = %315, %251
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %318 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %320 = call i32 @avio_tell(%struct.TYPE_25__* %319)
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 4
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %324 = call i32 @avio_wb64(%struct.TYPE_25__* %323, i32 -1)
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %326 = call i32 @avio_wb32(%struct.TYPE_25__* %325, i32 0)
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %328 = call i32 @avio_flush(%struct.TYPE_25__* %327)
  store i32 0, i32* %2, align 4
  br label %329

329:                                              ; preds = %316, %87, %70, %62, %46, %36
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local i32 @ff_codec_get_tag(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @samples_per_packet(i32, i32, i32) #1

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @avio_wb16(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @av_double2int(i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @codec_flags(i32) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @ff_mov_write_chan(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @avio_write(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @avio_w8(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_26__*) #1

declare dso_local i32 @av_dict_count(i32) #1

declare dso_local %struct.TYPE_27__* @av_dict_get(i32, i8*, %struct.TYPE_27__*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @avio_put_str(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_25__*) #1

declare dso_local i32 @avio_flush(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
