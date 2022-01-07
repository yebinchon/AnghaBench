; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_add_ffmpeg_subtitle.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_add_ffmpeg_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_29__** }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_25__ = type { i8*, i8*, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_24__, i64*, i32, i64*, i32, i32, i32, i8*, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_23__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@PICTURESUB = common dso_local global i8* null, align 8
@VOBSUB = common dso_local global i32 0, align 4
@RENDERSUB = common dso_local global i8* null, align 8
@WORK_DECVOBSUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"add_ffmpeg_subtitle: malformed extradata for VOB subtitle track; subtitle colors likely to be wrong\00", align 1
@TEXTSUB = common dso_local global i8* null, align 8
@UTF8SUB = common dso_local global i32 0, align 4
@PASSTHRUSUB = common dso_local global i8* null, align 8
@WORK_DECUTF8SUB = common dso_local global i32 0, align 4
@TX3GSUB = common dso_local global i32 0, align 4
@WORK_DECTX3GSUB = common dso_local global i32 0, align 4
@SSASUB = common dso_local global i32 0, align 4
@WORK_DECSSASUB = common dso_local global i32 0, align 4
@PGSSUB = common dso_local global i32 0, align 4
@WORK_DECPGSSUB = common dso_local global i32 0, align 4
@CC608SUB = common dso_local global i32 0, align 4
@WORK_DECCC608 = common dso_local global i32 0, align 4
@HB_SUBTITLE_ATTR_CC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"add_ffmpeg_subtitle: unknown subtitle stream type: 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4
@HB_SUBTITLE_ATTR_DEFAULT = common dso_local global i32 0, align 4
@AV_DISPOSITION_FORCED = common dso_local global i32 0, align 4
@HB_SUBTITLE_ATTR_FORCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, i32)* @add_ffmpeg_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ffmpeg_subtitle(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %17, i64 %19
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %7, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %8, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_30__* @av_dict_get(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %9, align 8
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %30 = icmp ne %struct.TYPE_30__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call %struct.TYPE_25__* @lang_for_code2(i8* %37)
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %10, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @ffmpeg_track_name(%struct.TYPE_29__* %39, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = call %struct.TYPE_27__* @calloc(i32 1, i32 88)
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %12, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 12
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  store i32 90000, i32* %53, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %151 [
    i32 133, label %57
    i32 128, label %78
    i32 129, label %78
    i32 130, label %92
    i32 134, label %106
    i32 131, label %120
    i32 132, label %134
  ]

57:                                               ; preds = %36
  %58 = load i8*, i8** @PICTURESUB, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 11
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @VOBSUB, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @RENDERSUB, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @WORK_DECVOBSUB, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %73 = call i32 @ffmpeg_parse_vobsub_extradata(%struct.TYPE_21__* %71, %struct.TYPE_27__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %57
  br label %158

78:                                               ; preds = %36, %36
  %79 = load i8*, i8** @TEXTSUB, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 11
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @UTF8SUB, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** @PASSTHRUSUB, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* @WORK_DECUTF8SUB, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  br label %158

92:                                               ; preds = %36
  %93 = load i8*, i8** @TEXTSUB, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @TX3GSUB, align 4
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @PASSTHRUSUB, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* @WORK_DECTX3GSUB, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  br label %158

106:                                              ; preds = %36
  %107 = load i8*, i8** @TEXTSUB, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @SSASUB, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load i8*, i8** @PASSTHRUSUB, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* @WORK_DECSSASUB, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  br label %158

120:                                              ; preds = %36
  %121 = load i8*, i8** @PICTURESUB, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 11
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @PGSSUB, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load i8*, i8** @RENDERSUB, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* @WORK_DECPGSSUB, align 4
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  br label %158

134:                                              ; preds = %36
  %135 = load i8*, i8** @TEXTSUB, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 11
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @CC608SUB, align 4
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @PASSTHRUSUB, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  %145 = load i32, i32* @WORK_DECCC608, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 10
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @HB_SUBTITLE_ATTR_CC, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %158

151:                                              ; preds = %36
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %157 = call i32 @free(%struct.TYPE_27__* %156)
  br label %278

158:                                              ; preds = %134, %120, %106, %92, %78, %77
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strlen(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %158
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  br label %175

171:                                              ; preds = %158
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  br label %175

175:                                              ; preds = %171, %167
  %176 = phi i8* [ %170, %167 ], [ %174, %171 ]
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @hb_subsource_name(i32 %179)
  %181 = call i32 @snprintf(i32 %161, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %176, i8* %180)
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 7
  %184 = load i64*, i64** %183, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @strncpy(i64* %184, i32 %187, i32 3)
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 7
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 3
  store i64 0, i64* %192, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %175
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @strdup(i8* %196)
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %195, %175
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %237

205:                                              ; preds = %200
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  %210 = call i64* @malloc(i32 %209)
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 5
  store i64* %210, i64** %212, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 5
  %215 = load i64*, i64** %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @memcpy(i64* %215, i32* %218, i32 %221)
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 5
  %225 = load i64*, i64** %224, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %225, i64 %229
  store i64 0, i64* %230, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %205, %200
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %237
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load i32, i32* @HB_SUBTITLE_ATTR_DEFAULT, align 4
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %244, %237
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @AV_DISPOSITION_FORCED, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load i32, i32* @HB_SUBTITLE_ATTR_FORCED, align 4
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %253
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @hb_list_count(i32 %269)
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %277 = call i32 @hb_list_add(i32 %275, %struct.TYPE_27__* %276)
  br label %278

278:                                              ; preds = %266, %151
  ret void
}

declare dso_local %struct.TYPE_30__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_25__* @lang_for_code2(i8*) #1

declare dso_local i8* @ffmpeg_track_name(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_27__* @calloc(i32, i32) #1

declare dso_local i32 @ffmpeg_parse_vobsub_extradata(%struct.TYPE_21__*, %struct.TYPE_27__*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @hb_subsource_name(i32) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
