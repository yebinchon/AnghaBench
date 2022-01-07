; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_stream_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i8*, %struct.TYPE_26__**, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_21__, %struct.TYPE_21__, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dump_separator\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"    Stream #%d:%d\00", align 1
@AVFMT_SHOW_IDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"[0x%x]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c", %d, %d/%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c", SAR %d:%d DAR %d:%d\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fps, \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"tbr, \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"tbr\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"tbn, \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tbn\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tbc\00", align 1
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@AV_DISPOSITION_DUB = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c" (dub)\00", align 1
@AV_DISPOSITION_ORIGINAL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c" (original)\00", align 1
@AV_DISPOSITION_COMMENT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c" (comment)\00", align 1
@AV_DISPOSITION_LYRICS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c" (lyrics)\00", align 1
@AV_DISPOSITION_KARAOKE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c" (karaoke)\00", align 1
@AV_DISPOSITION_FORCED = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c" (forced)\00", align 1
@AV_DISPOSITION_HEARING_IMPAIRED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c" (hearing impaired)\00", align 1
@AV_DISPOSITION_VISUAL_IMPAIRED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c" (visual impaired)\00", align 1
@AV_DISPOSITION_CLEAN_EFFECTS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c" (clean effects)\00", align 1
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c" (attached pic)\00", align 1
@AV_DISPOSITION_TIMED_THUMBNAILS = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [20 x i8] c" (timed thumbnails)\00", align 1
@AV_DISPOSITION_CAPTIONS = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c" (captions)\00", align 1
@AV_DISPOSITION_DESCRIPTIONS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c" (descriptions)\00", align 1
@AV_DISPOSITION_METADATA = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c" (metadata)\00", align 1
@AV_DISPOSITION_DEPENDENT = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c" (dependent)\00", align 1
@AV_DISPOSITION_STILL_IMAGE = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c" (still image)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32, i32, i32)* @dump_stream_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_stream_format(%struct.TYPE_28__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ %28, %23 ], [ %34, %29 ]
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %39, i64 %41
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %11, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_29__* @av_dict_get(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %12, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %13, align 8
  %51 = call %struct.TYPE_30__* @avcodec_alloc_context3(i32* null)
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %14, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %53 = icmp ne %struct.TYPE_30__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %35
  br label %565

55:                                               ; preds = %35
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = call i32 @avcodec_parameters_to_context(%struct.TYPE_30__* %56, %struct.TYPE_20__* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 @avcodec_free_context(%struct.TYPE_30__** %14)
  br label %565

65:                                               ; preds = %55
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %65
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @av_opt_set(%struct.TYPE_30__* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 0)
  br label %114

114:                                              ; preds = %110, %65
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @avcodec_string(i8* %115, i32 256, %struct.TYPE_30__* %116, i32 %117)
  %119 = call i32 @avcodec_free_context(%struct.TYPE_30__** %14)
  %120 = load i32, i32* @AV_LOG_INFO, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @AVFMT_SHOW_IDS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %114
  %129 = load i32, i32* @AV_LOG_INFO, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %114
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %136 = icmp ne %struct.TYPE_29__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @AV_LOG_INFO, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, i32* @AV_LOG_DEBUG, align 4
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %147, i64 %151, i64 %155)
  %157 = load i32, i32* @AV_LOG_INFO, align 4
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %159 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %220

165:                                              ; preds = %143
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = bitcast %struct.TYPE_22__* %167 to { i64, i64 }*
  %174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @av_cmp_q(i64 %175, i64 %177, i32 %172)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %220

180:                                              ; preds = %165
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = mul nsw i32 %187, %192
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = mul nsw i32 %198, %203
  %205 = call i32 @av_reduce(i32* %181, i32* %182, i32 %193, i32 %204, i32 1048576)
  %206 = load i32, i32* @AV_LOG_INFO, align 4
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %210, i64 %214, i32 %216, i32 %218)
  br label %220

220:                                              ; preds = %180, %165, %143
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 6
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %386

228:                                              ; preds = %220
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br label %240

240:                                              ; preds = %234, %228
  %241 = phi i1 [ false, %228 ], [ %239, %234 ]
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %17, align 4
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %248, %240
  %255 = phi i1 [ false, %240 ], [ %253, %248 ]
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %18, align 4
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %254
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br label %268

268:                                              ; preds = %262, %254
  %269 = phi i1 [ false, %254 ], [ %267, %262 ]
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %19, align 4
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %268
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br label %286

286:                                              ; preds = %278, %268
  %287 = phi i1 [ false, %268 ], [ %285, %278 ]
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %20, align 4
  %289 = load i32, i32* %17, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %18, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %20, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297, %294, %291, %286
  %301 = load i32, i32* @AV_LOG_INFO, align 4
  %302 = load i8*, i8** %13, align 8
  %303 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %302)
  br label %304

304:                                              ; preds = %300, %297
  %305 = load i32, i32* %17, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %329

307:                                              ; preds = %304
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 5
  %310 = bitcast %struct.TYPE_21__* %309 to { i64, i64 }*
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @av_q2d(i64 %312, i64 %314)
  %316 = load i32, i32* %18, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %19, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load i32, i32* %20, align 4
  %323 = icmp ne i32 %322, 0
  br label %324

324:                                              ; preds = %321, %318, %307
  %325 = phi i1 [ true, %318 ], [ true, %307 ], [ %323, %321 ]
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %328 = call i32 @print_fps(i32 %315, i8* %327)
  br label %329

329:                                              ; preds = %324, %304
  %330 = load i32, i32* %18, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %351

332:                                              ; preds = %329
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 4
  %335 = bitcast %struct.TYPE_21__* %334 to { i64, i64 }*
  %336 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %335, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @av_q2d(i64 %337, i64 %339)
  %341 = load i32, i32* %19, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %332
  %344 = load i32, i32* %20, align 4
  %345 = icmp ne i32 %344, 0
  br label %346

346:                                              ; preds = %343, %332
  %347 = phi i1 [ true, %332 ], [ %345, %343 ]
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %350 = call i32 @print_fps(i32 %340, i8* %349)
  br label %351

351:                                              ; preds = %346, %329
  %352 = load i32, i32* %19, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 3
  %357 = bitcast %struct.TYPE_21__* %356 to { i64, i64 }*
  %358 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %357, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @av_q2d(i64 %359, i64 %361)
  %363 = sdiv i32 1, %362
  %364 = load i32, i32* %20, align 4
  %365 = icmp ne i32 %364, 0
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %368 = call i32 @print_fps(i32 %363, i8* %367)
  br label %369

369:                                              ; preds = %354, %351
  %370 = load i32, i32* %20, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %369
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = bitcast %struct.TYPE_21__* %376 to { i64, i64 }*
  %378 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %377, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = call i32 @av_q2d(i64 %379, i64 %381)
  %383 = sdiv i32 1, %382
  %384 = call i32 @print_fps(i32 %383, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %385

385:                                              ; preds = %372, %369
  br label %386

386:                                              ; preds = %385, %220
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load i32, i32* @AV_LOG_INFO, align 4
  %395 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %394, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %396

396:                                              ; preds = %393, %386
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @AV_DISPOSITION_DUB, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %396
  %404 = load i32, i32* @AV_LOG_INFO, align 4
  %405 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %406

406:                                              ; preds = %403, %396
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @AV_DISPOSITION_ORIGINAL, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %406
  %414 = load i32, i32* @AV_LOG_INFO, align 4
  %415 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %416

416:                                              ; preds = %413, %406
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @AV_DISPOSITION_COMMENT, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %416
  %424 = load i32, i32* @AV_LOG_INFO, align 4
  %425 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %426

426:                                              ; preds = %423, %416
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @AV_DISPOSITION_LYRICS, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %426
  %434 = load i32, i32* @AV_LOG_INFO, align 4
  %435 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %434, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %436

436:                                              ; preds = %433, %426
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @AV_DISPOSITION_KARAOKE, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %436
  %444 = load i32, i32* @AV_LOG_INFO, align 4
  %445 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %444, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %446

446:                                              ; preds = %443, %436
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @AV_DISPOSITION_FORCED, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %446
  %454 = load i32, i32* @AV_LOG_INFO, align 4
  %455 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %456

456:                                              ; preds = %453, %446
  %457 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %458 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @AV_DISPOSITION_HEARING_IMPAIRED, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %456
  %464 = load i32, i32* @AV_LOG_INFO, align 4
  %465 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %464, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  br label %466

466:                                              ; preds = %463, %456
  %467 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %468 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @AV_DISPOSITION_VISUAL_IMPAIRED, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %466
  %474 = load i32, i32* @AV_LOG_INFO, align 4
  %475 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %474, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  br label %476

476:                                              ; preds = %473, %466
  %477 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %478 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @AV_DISPOSITION_CLEAN_EFFECTS, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %476
  %484 = load i32, i32* @AV_LOG_INFO, align 4
  %485 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %484, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  br label %486

486:                                              ; preds = %483, %476
  %487 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = load i32, i32* @AV_LOG_INFO, align 4
  %495 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %494, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  br label %496

496:                                              ; preds = %493, %486
  %497 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @AV_DISPOSITION_TIMED_THUMBNAILS, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %496
  %504 = load i32, i32* @AV_LOG_INFO, align 4
  %505 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %504, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  br label %506

506:                                              ; preds = %503, %496
  %507 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %508 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @AV_DISPOSITION_CAPTIONS, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %506
  %514 = load i32, i32* @AV_LOG_INFO, align 4
  %515 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %514, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  br label %516

516:                                              ; preds = %513, %506
  %517 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %518 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @AV_DISPOSITION_DESCRIPTIONS, align 4
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %516
  %524 = load i32, i32* @AV_LOG_INFO, align 4
  %525 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %524, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  br label %526

526:                                              ; preds = %523, %516
  %527 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %528 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @AV_DISPOSITION_METADATA, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %526
  %534 = load i32, i32* @AV_LOG_INFO, align 4
  %535 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %534, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0))
  br label %536

536:                                              ; preds = %533, %526
  %537 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %538 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @AV_DISPOSITION_DEPENDENT, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %536
  %544 = load i32, i32* @AV_LOG_INFO, align 4
  %545 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %544, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  br label %546

546:                                              ; preds = %543, %536
  %547 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %548 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @AV_DISPOSITION_STILL_IMAGE, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %546
  %554 = load i32, i32* @AV_LOG_INFO, align 4
  %555 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %554, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  br label %556

556:                                              ; preds = %553, %546
  %557 = load i32, i32* @AV_LOG_INFO, align 4
  %558 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %557, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %559 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %560 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @dump_metadata(i32* null, i32 %561, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %563 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %564 = call i32 @dump_sidedata(i32* null, %struct.TYPE_26__* %563, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  br label %565

565:                                              ; preds = %556, %63, %54
  ret void
}

declare dso_local %struct.TYPE_29__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_30__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_30__*, %struct.TYPE_20__*) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_30__**) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_30__*, i8*, i8*, i32) #1

declare dso_local i32 @avcodec_string(i8*, i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @av_cmp_q(i64, i64, i32) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @print_fps(i32, i8*) #1

declare dso_local i32 @av_q2d(i64, i64) #1

declare dso_local i32 @dump_metadata(i32*, i32, i8*) #1

declare dso_local i32 @dump_sidedata(i32*, %struct.TYPE_26__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
